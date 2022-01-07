
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int fb_size; int fb_address; int pitch; int y; int x; int height; int width; } ;
struct TYPE_7__ {int alignment; int alpha; int bpp; int y; int x; int height; int width; } ;
struct TYPE_9__ {TYPE_3__ resp; TYPE_2__ req; } ;
struct TYPE_10__ {TYPE_4__ body; } ;
struct TYPE_6__ {int buf_size; int code; } ;
struct msg_fb_setup {TYPE_5__ buffer; TYPE_5__ pitch; TYPE_5__ offset; TYPE_5__ virtual_w_h; TYPE_5__ physical_w_h; scalar_t__ end_tag; TYPE_5__ alpha; TYPE_5__ depth; TYPE_1__ hdr; } ;
struct bcm2835_fb_config {int size; int base; int pitch; int yoffset; int xoffset; int vyres; int vxres; int yres; int xres; int bpp; } ;
typedef int msg ;


 int ALLOCATE_BUFFER ;
 int BCM2835_MBOX_ALPHA_MODE_IGNORED ;
 int BCM2835_MBOX_CODE_REQ ;
 int BCM2835_MBOX_INIT_TAG (TYPE_5__*,int ) ;
 int GET_PITCH ;
 int PAGE_SIZE ;
 int SET_ALPHA_MODE ;
 int SET_DEPTH ;
 int SET_PHYSICAL_W_H ;
 int SET_VIRTUAL_OFFSET ;
 int SET_VIRTUAL_W_H ;
 int VCBUS_TO_PHYS (int ) ;
 int bcm2835_mbox_property (struct msg_fb_setup*,int) ;
 int memset (struct msg_fb_setup*,int ,int) ;

int
bcm2835_mbox_fb_init(struct bcm2835_fb_config *fb)
{
 int err;
 struct msg_fb_setup msg;

 memset(&msg, 0, sizeof(msg));
 msg.hdr.buf_size = sizeof(msg);
 msg.hdr.code = BCM2835_MBOX_CODE_REQ;
 BCM2835_MBOX_INIT_TAG(&msg.physical_w_h, SET_PHYSICAL_W_H);
 msg.physical_w_h.body.req.width = fb->xres;
 msg.physical_w_h.body.req.height = fb->yres;
 BCM2835_MBOX_INIT_TAG(&msg.virtual_w_h, SET_VIRTUAL_W_H);
 msg.virtual_w_h.body.req.width = fb->vxres;
 msg.virtual_w_h.body.req.height = fb->vyres;
 BCM2835_MBOX_INIT_TAG(&msg.offset, SET_VIRTUAL_OFFSET);
 msg.offset.body.req.x = fb->xoffset;
 msg.offset.body.req.y = fb->yoffset;
 BCM2835_MBOX_INIT_TAG(&msg.depth, SET_DEPTH);
 msg.depth.body.req.bpp = fb->bpp;
 BCM2835_MBOX_INIT_TAG(&msg.alpha, SET_ALPHA_MODE);
 msg.alpha.body.req.alpha = BCM2835_MBOX_ALPHA_MODE_IGNORED;
 BCM2835_MBOX_INIT_TAG(&msg.buffer, ALLOCATE_BUFFER);
 msg.buffer.body.req.alignment = PAGE_SIZE;
 BCM2835_MBOX_INIT_TAG(&msg.pitch, GET_PITCH);
 msg.end_tag = 0;

 err = bcm2835_mbox_property(&msg, sizeof(msg));
 if (err == 0) {
  fb->xres = msg.physical_w_h.body.resp.width;
  fb->yres = msg.physical_w_h.body.resp.height;
  fb->vxres = msg.virtual_w_h.body.resp.width;
  fb->vyres = msg.virtual_w_h.body.resp.height;
  fb->xoffset = msg.offset.body.resp.x;
  fb->yoffset = msg.offset.body.resp.y;
  fb->pitch = msg.pitch.body.resp.pitch;
  fb->base = VCBUS_TO_PHYS(msg.buffer.body.resp.fb_address);
  fb->size = msg.buffer.body.resp.fb_size;
 }

 return (err);
}
