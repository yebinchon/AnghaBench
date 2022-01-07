
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct ft5406ts_softc {int sc_tick; int sc_mtx; int sc_callout; int * touch_buf; int * sc_evdev; int sc_dev; int sc_init_hook; } ;
struct TYPE_7__ {scalar_t__ address; } ;
struct TYPE_8__ {TYPE_3__ resp; } ;
struct TYPE_6__ {int val_buf_size; int val_len; int tag; } ;
struct TYPE_5__ {int buf_size; int code; } ;
struct bcm2835_mbox_tag_touchbuf {TYPE_4__ body; scalar_t__ end_tag; TYPE_2__ tag_hdr; TYPE_1__ hdr; } ;
typedef int msg ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_SLOT ;
 int ABS_MT_TRACKING_ID ;
 int BCM2835_MBOX_CODE_REQ ;
 int BCM2835_MBOX_TAG_GET_TOUCHBUF ;
 int BUS_HOST ;
 int EVDEV_FLAG_MT_AUTOREL ;
 int EVDEV_FLAG_MT_STCOMPAT ;
 int EV_ABS ;
 int EV_SYN ;
 size_t FT5406_NUM_POINTS ;
 int FT5406_WINDOW_SIZE ;
 int INPUT_PROP_DIRECT ;
 int MAX_TOUCH_ID ;
 int NO_POINTS ;
 int SCREEN_HEIGHT ;
 int SCREEN_RES_X ;
 int SCREEN_RES_Y ;
 int SCREEN_WIDTH ;
 int VCBUS_TO_PHYS (scalar_t__) ;
 int bcm2835_mbox_property (struct bcm2835_mbox_tag_touchbuf*,int) ;
 int callout_init_mtx (int *,int *,int ) ;
 int config_intrhook_disestablish (int *) ;
 int device_get_desc (int ) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int * evdev_alloc () ;
 int evdev_free (int *) ;
 int evdev_register_mtx (int *,int *) ;
 int evdev_set_flag (int *,int ) ;
 int evdev_set_id (int *,int ,int ,int ,int ) ;
 int evdev_set_methods (int *,struct ft5406ts_softc*,int *) ;
 int evdev_set_name (int *,int ) ;
 int evdev_set_phys (int *,int ) ;
 int evdev_support_abs (int *,int ,int ,int,int ,int ,int ,int ) ;
 int evdev_support_event (int *,int ) ;
 int evdev_support_prop (int *,int ) ;
 int ft5406ts_evdev_methods ;
 int hz ;
 int memset (struct bcm2835_mbox_tag_touchbuf*,int ,int) ;
 scalar_t__ pmap_mapdev (int ,int ) ;

__attribute__((used)) static void
ft5406ts_init(void *arg)
{
 struct ft5406ts_softc *sc = arg;
 struct bcm2835_mbox_tag_touchbuf msg;
 uint32_t touchbuf;
 int err;


 config_intrhook_disestablish(&sc->sc_init_hook);

 memset(&msg, 0, sizeof(msg));
 msg.hdr.buf_size = sizeof(msg);
 msg.hdr.code = BCM2835_MBOX_CODE_REQ;
 msg.tag_hdr.tag = BCM2835_MBOX_TAG_GET_TOUCHBUF;
 msg.tag_hdr.val_buf_size = sizeof(msg.body);
 msg.tag_hdr.val_len = sizeof(msg.body);
 msg.end_tag = 0;


 err = bcm2835_mbox_property(&msg, sizeof(msg));
 if (err) {
  device_printf(sc->sc_dev, "failed to get touchbuf address\n");
  return;
 }

 if (msg.body.resp.address == 0) {
  device_printf(sc->sc_dev, "touchscreen not detected\n");
  return;
 }

 touchbuf = VCBUS_TO_PHYS(msg.body.resp.address);
 sc->touch_buf = (uint8_t*)pmap_mapdev(touchbuf, FT5406_WINDOW_SIZE);


 sc->sc_tick = hz * 17 / 1000;
 if (sc->sc_tick == 0)
  sc->sc_tick = 1;

 sc->sc_evdev = evdev_alloc();
 evdev_set_name(sc->sc_evdev, device_get_desc(sc->sc_dev));
 evdev_set_phys(sc->sc_evdev, device_get_nameunit(sc->sc_dev));
 evdev_set_id(sc->sc_evdev, BUS_HOST, 0, 0, 0);
 evdev_set_methods(sc->sc_evdev, sc, &ft5406ts_evdev_methods);
 evdev_set_flag(sc->sc_evdev, EVDEV_FLAG_MT_STCOMPAT);
 evdev_set_flag(sc->sc_evdev, EVDEV_FLAG_MT_AUTOREL);
 evdev_support_prop(sc->sc_evdev, INPUT_PROP_DIRECT);
 evdev_support_event(sc->sc_evdev, EV_SYN);
 evdev_support_event(sc->sc_evdev, EV_ABS);

 evdev_support_abs(sc->sc_evdev, ABS_MT_SLOT, 0, 0,
     MAX_TOUCH_ID, 0, 0, 0);
 evdev_support_abs(sc->sc_evdev, ABS_MT_TRACKING_ID, 0, -1,
     MAX_TOUCH_ID, 0, 0, 0);
 evdev_support_abs(sc->sc_evdev, ABS_MT_POSITION_X, 0, 0,
     SCREEN_WIDTH, 0, 0, SCREEN_RES_X);
 evdev_support_abs(sc->sc_evdev, ABS_MT_POSITION_Y, 0, 0,
     SCREEN_HEIGHT, 0, 0, SCREEN_RES_Y);

 err = evdev_register_mtx(sc->sc_evdev, &sc->sc_mtx);
 if (err) {
  evdev_free(sc->sc_evdev);
  sc->sc_evdev = ((void*)0);
  return;
 }

 sc->touch_buf[FT5406_NUM_POINTS] = NO_POINTS;
 callout_init_mtx(&sc->sc_callout, &sc->sc_mtx, 0);
}
