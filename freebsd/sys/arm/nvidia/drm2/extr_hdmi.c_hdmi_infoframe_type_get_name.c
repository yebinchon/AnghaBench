
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hdmi_infoframe_type { ____Placeholder_hdmi_infoframe_type } hdmi_infoframe_type ;







__attribute__((used)) static const char *hdmi_infoframe_type_get_name(enum hdmi_infoframe_type type)
{
 if (type < 0x80 || type > 0x9f)
  return "Invalid";
 switch (type) {
 case 128:
  return "Vendor";
 case 130:
  return "Auxiliary Video Information (AVI)";
 case 129:
  return "Source Product Description (SPD)";
 case 131:
  return "Audio";
 }
 return "Reserved";
}
