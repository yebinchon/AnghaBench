
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hdmi_nups { ____Placeholder_hdmi_nups } hdmi_nups ;







__attribute__((used)) static const char *hdmi_nups_get_name(enum hdmi_nups nups)
{
 switch (nups) {
 case 129:
  return "Unknown Non-uniform Scaling";
 case 130:
  return "Horizontally Scaled";
 case 128:
  return "Vertically Scaled";
 case 131:
  return "Horizontally and Vertically Scaled";
 }
 return "Invalid";
}
