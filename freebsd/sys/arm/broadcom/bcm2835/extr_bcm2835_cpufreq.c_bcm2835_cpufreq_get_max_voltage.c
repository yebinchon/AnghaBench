
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {scalar_t__ value; } ;
struct TYPE_8__ {int voltage_id; } ;
struct TYPE_10__ {TYPE_4__ resp; TYPE_3__ req; } ;
struct TYPE_7__ {int val_buf_size; int val_len; int tag; } ;
struct TYPE_6__ {int buf_size; int code; } ;
struct msg_get_max_voltage {TYPE_5__ body; scalar_t__ end_tag; TYPE_2__ tag_hdr; TYPE_1__ hdr; } ;
struct bcm2835_cpufreq_softc {int dev; } ;
typedef int msg ;


 int BCM2835_MBOX_CODE_REQ ;
 int BCM2835_MBOX_TAG_GET_MAX_VOLTAGE ;
 int DPRINTF (char*,int) ;
 int MSG_ERROR ;
 int bcm2835_mbox_property (struct msg_get_max_voltage*,int) ;
 int device_printf (int ,char*) ;
 int memset (struct msg_get_max_voltage*,int ,int) ;

__attribute__((used)) static int
bcm2835_cpufreq_get_max_voltage(struct bcm2835_cpufreq_softc *sc,
    uint32_t voltage_id)
{
 struct msg_get_max_voltage msg;
 int value;
 int err;
 memset(&msg, 0, sizeof(msg));
 msg.hdr.buf_size = sizeof(msg);
 msg.hdr.code = BCM2835_MBOX_CODE_REQ;
 msg.tag_hdr.tag = BCM2835_MBOX_TAG_GET_MAX_VOLTAGE;
 msg.tag_hdr.val_buf_size = sizeof(msg.body);
 msg.tag_hdr.val_len = sizeof(msg.body.req);
 msg.body.req.voltage_id = voltage_id;
 msg.end_tag = 0;


 err = bcm2835_mbox_property(&msg, sizeof(msg));
 if (err) {
  device_printf(sc->dev, "can't get max voltage\n");
  return (MSG_ERROR);
 }


 value = (int)msg.body.resp.value;
 DPRINTF("value = %d\n", value);
 return (value);
}
