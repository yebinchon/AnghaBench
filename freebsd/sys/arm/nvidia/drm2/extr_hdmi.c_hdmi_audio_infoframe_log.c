
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_audio_infoframe {char* channels; char* channel_allocation; char* level_shift_value; scalar_t__ downmix_inhibit; int coding_type_ext; int sample_frequency; int sample_size; int coding_type; } ;
struct hdmi_any_infoframe {int dummy; } ;


 char* hdmi_audio_coding_type_ext_get_name (int ) ;
 char* hdmi_audio_coding_type_get_name (int ) ;
 char* hdmi_audio_sample_frequency_get_name (int ) ;
 char* hdmi_audio_sample_size_get_name (int ) ;
 int hdmi_infoframe_log_header (struct hdmi_any_infoframe*) ;
 int hdmi_log (char*,...) ;

__attribute__((used)) static void hdmi_audio_infoframe_log(struct hdmi_audio_infoframe *frame)
{
 hdmi_infoframe_log_header((struct hdmi_any_infoframe *)frame);

 if (frame->channels)
  hdmi_log("    channels: %u\n", frame->channels - 1);
 else
  hdmi_log("    channels: Refer to stream header\n");
 hdmi_log("    coding type: %s\n",
   hdmi_audio_coding_type_get_name(frame->coding_type));
 hdmi_log("    sample size: %s\n",
   hdmi_audio_sample_size_get_name(frame->sample_size));
 hdmi_log("    sample frequency: %s\n",
   hdmi_audio_sample_frequency_get_name(frame->sample_frequency));
 hdmi_log("    coding type ext: %s\n",
   hdmi_audio_coding_type_ext_get_name(frame->coding_type_ext));
 hdmi_log("    channel allocation: 0x%x\n",
   frame->channel_allocation);
 hdmi_log("    level shift value: %u dB\n",
   frame->level_shift_value);
 hdmi_log("    downmix inhibit: %s\n",
   frame->downmix_inhibit ? "Yes" : "No");
}
