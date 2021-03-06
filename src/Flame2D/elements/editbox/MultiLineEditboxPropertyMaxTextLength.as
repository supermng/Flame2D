
/*!
\brief
Property to access the maximum text length for the edit box.

\par Usage:
- Name: MaxTextLength
- Format: "[uint]"

\par Where:
- [uint] is the maximum allowed text length (as a count of code points).
*/
package Flame2D.elements.editbox
{
    import Flame2D.core.properties.FlameProperty;
    import Flame2D.core.properties.FlamePropertyHelper;
    
    public class MultiLineEditboxPropertyMaxTextLength extends FlameProperty
    {
        public function MultiLineEditboxPropertyMaxTextLength()
        {
            super(
                "MaxTextLength",
                "Property to get/set the the maximum allowed text length (as a count of code points).  Value is \"[uint]\".",
                "1073741824");
        }
        
        override public function getValue(receiver:*):String
        {
            return FlamePropertyHelper.uintToString((receiver as FlameMultiLineEditbox).getMaxTextLength());
        }
        
        
        override public function setValue(receiver:*, value:String):void
        {
            (receiver as FlameMultiLineEditbox).setMaxTextLength(FlamePropertyHelper.stringToUint(value));
        }
    }
}