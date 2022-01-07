
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_avi_infoframe {int version; int length; int type; } ;


 int HDMI_AVI_INFOFRAME_SIZE ;
 int HDMI_INFOFRAME_TYPE_AVI ;
 int memset (struct hdmi_avi_infoframe*,int ,int) ;

int hdmi_avi_infoframe_init(struct hdmi_avi_infoframe *frame)
{
 memset(frame, 0, sizeof(*frame));

 frame->type = HDMI_INFOFRAME_TYPE_AVI;
 frame->version = 2;
 frame->length = HDMI_AVI_INFOFRAME_SIZE;

 return 0;
}
