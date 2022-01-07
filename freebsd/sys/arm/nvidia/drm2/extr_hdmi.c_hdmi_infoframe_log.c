
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union hdmi_infoframe {int vendor; int audio; int spd; int avi; TYPE_1__ any; } ;






 int hdmi_audio_infoframe_log (int *) ;
 int hdmi_avi_infoframe_log (int *) ;
 int hdmi_spd_infoframe_log (int *) ;
 int hdmi_vendor_any_infoframe_log (int *) ;

void hdmi_infoframe_log(union hdmi_infoframe *frame)
{
 switch (frame->any.type) {
 case 130:
  hdmi_avi_infoframe_log(&frame->avi);
  break;
 case 129:
  hdmi_spd_infoframe_log(&frame->spd);
  break;
 case 131:
  hdmi_audio_infoframe_log(&frame->audio);
  break;
 case 128:
  hdmi_vendor_any_infoframe_log(&frame->vendor);
  break;
 }
}
