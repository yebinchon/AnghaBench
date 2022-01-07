
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hdmi_extended_colorimetry { ____Placeholder_hdmi_extended_colorimetry } hdmi_extended_colorimetry ;
__attribute__((used)) static const char *
hdmi_extended_colorimetry_get_name(enum hdmi_extended_colorimetry ext_col)
{
 switch (ext_col) {
 case 129:
  return "xvYCC 601";
 case 128:
  return "xvYCC 709";
 case 130:
  return "sYCC 601";
 case 134:
  return "Adobe YCC 601";
 case 135:
  return "Adobe RGB";
 case 132:
  return "BT.2020 Constant Luminance";
 case 133:
  return "BT.2020";
 case 131:
  return "Reserved";
 }
 return "Invalid";
}
