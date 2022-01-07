
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hdmi_spd_sdi { ____Placeholder_hdmi_spd_sdi } hdmi_spd_sdi ;
__attribute__((used)) static const char *hdmi_spd_sdi_get_name(enum hdmi_spd_sdi sdi)
{
;
 switch (sdi) {
 case 129:
  return "Unknown";
 case 139:
  return "Digital STB";
 case 137:
  return "DVD Player";
 case 136:
  return "D-VHS";
 case 133:
  return "HDD Videorecorder";
 case 138:
  return "DVC";
 case 140:
  return "DSC";
 case 128:
  return "Video CD";
 case 135:
  return "Game";
 case 132:
  return "PC General";
 case 141:
  return "Blu-Ray Disc (BD)";
 case 130:
  return "Super Audio CD";
 case 134:
  return "HD DVD";
 case 131:
  return "PMP";
 }
 return "Reserved";
}
