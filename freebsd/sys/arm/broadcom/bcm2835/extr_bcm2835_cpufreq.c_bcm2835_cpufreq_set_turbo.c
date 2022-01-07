
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_9__ {scalar_t__ level; } ;
struct TYPE_8__ {scalar_t__ level; scalar_t__ id; } ;
struct TYPE_10__ {TYPE_4__ resp; TYPE_3__ req; } ;
struct TYPE_7__ {int val_buf_size; int val_len; int tag; } ;
struct TYPE_6__ {int buf_size; int code; } ;
struct msg_set_turbo {TYPE_5__ body; scalar_t__ end_tag; TYPE_2__ tag_hdr; TYPE_1__ hdr; } ;
struct bcm2835_cpufreq_softc {int dev; } ;
typedef int msg ;


 int BCM2835_MBOX_CODE_REQ ;
 int BCM2835_MBOX_TAG_SET_TURBO ;
 scalar_t__ BCM2835_MBOX_TURBO_OFF ;
 scalar_t__ BCM2835_MBOX_TURBO_ON ;
 int DPRINTF (char*,int) ;
 int MSG_ERROR ;
 int bcm2835_mbox_property (struct msg_set_turbo*,int) ;
 int device_printf (int ,char*) ;
 int memset (struct msg_set_turbo*,int ,int) ;

__attribute__((used)) static int
bcm2835_cpufreq_set_turbo(struct bcm2835_cpufreq_softc *sc, uint32_t level)
{
 struct msg_set_turbo msg;
 int value;
 int err;
 if (level != BCM2835_MBOX_TURBO_ON && level != BCM2835_MBOX_TURBO_OFF)
  level = BCM2835_MBOX_TURBO_OFF;


 memset(&msg, 0, sizeof(msg));
 msg.hdr.buf_size = sizeof(msg);
 msg.hdr.code = BCM2835_MBOX_CODE_REQ;
 msg.tag_hdr.tag = BCM2835_MBOX_TAG_SET_TURBO;
 msg.tag_hdr.val_buf_size = sizeof(msg.body);
 msg.tag_hdr.val_len = sizeof(msg.body.req);
 msg.body.req.id = 0;
 msg.body.req.level = level;
 msg.end_tag = 0;


 err = bcm2835_mbox_property(&msg, sizeof(msg));
 if (err) {
  device_printf(sc->dev, "can't set turbo\n");
  return (MSG_ERROR);
 }


 value = (int)msg.body.resp.level;
 DPRINTF("level = %d\n", value);
 return (value);
}
