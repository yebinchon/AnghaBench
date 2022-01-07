
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union hdmi_infoframe {int vendor; int audio; int spd; int avi; } ;
typedef int uint8_t ;


 int EINVAL ;




 int hdmi_audio_infoframe_unpack (int *,void*) ;
 int hdmi_avi_infoframe_unpack (int *,void*) ;
 int hdmi_spd_infoframe_unpack (int *,void*) ;
 int hdmi_vendor_any_infoframe_unpack (int *,void*) ;

int hdmi_infoframe_unpack(union hdmi_infoframe *frame, void *buffer)
{
 int ret;
 uint8_t *ptr = buffer;

 switch (ptr[0]) {
 case 130:
  ret = hdmi_avi_infoframe_unpack(&frame->avi, buffer);
  break;
 case 129:
  ret = hdmi_spd_infoframe_unpack(&frame->spd, buffer);
  break;
 case 131:
  ret = hdmi_audio_infoframe_unpack(&frame->audio, buffer);
  break;
 case 128:
  ret = hdmi_vendor_any_infoframe_unpack(&frame->vendor, buffer);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
