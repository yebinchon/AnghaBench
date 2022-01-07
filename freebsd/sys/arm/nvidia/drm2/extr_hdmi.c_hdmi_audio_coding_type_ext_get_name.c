
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hdmi_audio_coding_type_ext { ____Placeholder_hdmi_audio_coding_type_ext } hdmi_audio_coding_type_ext ;
__attribute__((used)) static const char *
hdmi_audio_coding_type_ext_get_name(enum hdmi_audio_coding_type_ext ctx)
{

 switch (ctx) {
 case 137:
  return "Refer to CT";
 case 135:
  return "HE AAC";
 case 134:
  return "HE AAC v2";
 case 128:
  return "MPEG SURROUND";
 case 131:
  return "MPEG-4 HE AAC";
 case 129:
  return "MPEG-4 HE AAC v2";
 case 133:
  return "MPEG-4 AAC LC";
 case 136:
  return "DRA";
 case 130:
  return "MPEG-4 HE AAC + MPEG Surround";
 case 132:
  return "MPEG-4 AAC LC + MPEG Surround";
 }
 return "Reserved";
}
