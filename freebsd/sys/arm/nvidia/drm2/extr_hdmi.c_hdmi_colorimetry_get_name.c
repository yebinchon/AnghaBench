
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hdmi_colorimetry { ____Placeholder_hdmi_colorimetry } hdmi_colorimetry ;







__attribute__((used)) static const char *hdmi_colorimetry_get_name(enum hdmi_colorimetry colorimetry)
{
 switch (colorimetry) {
 case 128:
  return "No Data";
 case 130:
  return "ITU601";
 case 129:
  return "ITU709";
 case 131:
  return "Extended";
 }
 return "Invalid";
}
