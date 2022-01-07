
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hdmi_audio_sample_frequency { ____Placeholder_hdmi_audio_sample_frequency } hdmi_audio_sample_frequency ;
__attribute__((used)) static const char *
hdmi_audio_sample_frequency_get_name(enum hdmi_audio_sample_frequency freq)
{
 switch (freq) {
 case 128:
  return "Refer to Stream Header";
 case 133:
  return "32 kHz";
 case 132:
  return "44.1 kHz (CD)";
 case 131:
  return "48 kHz";
 case 130:
  return "88.2 kHz";
 case 129:
  return "96 kHz";
 case 135:
  return "176.4 kHz";
 case 134:
  return "192 kHz";
 }
 return "Invalid";
}
