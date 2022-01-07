
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_spd_infoframe {int version; int product; int vendor; int length; int type; } ;


 int HDMI_INFOFRAME_TYPE_SPD ;
 int HDMI_SPD_INFOFRAME_SIZE ;
 int memset (struct hdmi_spd_infoframe*,int ,int) ;
 int strncpy (int ,char const*,int) ;

int hdmi_spd_infoframe_init(struct hdmi_spd_infoframe *frame,
       const char *vendor, const char *product)
{
 memset(frame, 0, sizeof(*frame));

 frame->type = HDMI_INFOFRAME_TYPE_SPD;
 frame->version = 1;
 frame->length = HDMI_SPD_INFOFRAME_SIZE;

 strncpy(frame->vendor, vendor, sizeof(frame->vendor));
 strncpy(frame->product, product, sizeof(frame->product));

 return 0;
}
