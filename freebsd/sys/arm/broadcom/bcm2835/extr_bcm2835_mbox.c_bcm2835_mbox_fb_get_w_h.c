
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int height; int width; } ;
struct TYPE_9__ {TYPE_3__ resp; } ;
struct TYPE_7__ {scalar_t__ val_len; } ;
struct TYPE_10__ {TYPE_4__ body; TYPE_2__ tag_hdr; } ;
struct TYPE_6__ {int buf_size; int code; } ;
struct msg_fb_get_w_h {TYPE_5__ physical_w_h; scalar_t__ end_tag; TYPE_1__ hdr; } ;
struct bcm2835_fb_config {int yres; int xres; } ;
typedef int msg ;


 int BCM2835_MBOX_CODE_REQ ;
 int BCM2835_MBOX_INIT_TAG (TYPE_5__*,int ) ;
 int GET_PHYSICAL_W_H ;
 int bcm2835_mbox_property (struct msg_fb_get_w_h*,int) ;
 int memset (struct msg_fb_get_w_h*,int ,int) ;

int
bcm2835_mbox_fb_get_w_h(struct bcm2835_fb_config *fb)
{
 int err;
 struct msg_fb_get_w_h msg;

 memset(&msg, 0, sizeof(msg));
 msg.hdr.buf_size = sizeof(msg);
 msg.hdr.code = BCM2835_MBOX_CODE_REQ;
 BCM2835_MBOX_INIT_TAG(&msg.physical_w_h, GET_PHYSICAL_W_H);
 msg.physical_w_h.tag_hdr.val_len = 0;
 msg.end_tag = 0;

 err = bcm2835_mbox_property(&msg, sizeof(msg));
 if (err == 0) {
  fb->xres = msg.physical_w_h.body.resp.width;
  fb->yres = msg.physical_w_h.body.resp.height;
 }

 return (err);
}
