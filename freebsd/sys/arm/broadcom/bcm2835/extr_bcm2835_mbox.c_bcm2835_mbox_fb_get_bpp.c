
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int bpp; } ;
struct TYPE_8__ {TYPE_2__ resp; } ;
struct TYPE_6__ {scalar_t__ val_len; } ;
struct TYPE_10__ {TYPE_3__ body; TYPE_1__ tag_hdr; } ;
struct TYPE_9__ {int buf_size; int code; } ;
struct msg_fb_get_bpp {TYPE_5__ bpp; scalar_t__ end_tag; TYPE_4__ hdr; } ;
struct bcm2835_fb_config {int bpp; } ;
typedef int msg ;


 int BCM2835_MBOX_CODE_REQ ;
 int BCM2835_MBOX_INIT_TAG (TYPE_5__*,int ) ;
 int GET_DEPTH ;
 int bcm2835_mbox_property (struct msg_fb_get_bpp*,int) ;
 int memset (struct msg_fb_get_bpp*,int ,int) ;

int
bcm2835_mbox_fb_get_bpp(struct bcm2835_fb_config *fb)
{
 int err;
 struct msg_fb_get_bpp msg;

 memset(&msg, 0, sizeof(msg));
 msg.hdr.buf_size = sizeof(msg);
 msg.hdr.code = BCM2835_MBOX_CODE_REQ;
 BCM2835_MBOX_INIT_TAG(&msg.bpp, GET_DEPTH);
 msg.bpp.tag_hdr.val_len = 0;
 msg.end_tag = 0;

 err = bcm2835_mbox_property(&msg, sizeof(msg));
 if (err == 0)
  fb->bpp = msg.bpp.body.resp.bpp;

 return (err);
}
