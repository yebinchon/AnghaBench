
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ft5406ts_softc {int* touch_buf; int sc_tick; int sc_callout; int sc_evdev; int sc_dev; int sc_window; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_SLOT ;
 int ABS_MT_TRACKING_ID ;
 int EV_ABS ;
 int FT5406_LOCK_ASSERT (struct ft5406ts_softc*) ;
 size_t FT5406_NUM_POINTS ;
 int FT5406_WINDOW_SIZE ;
 int GET_NUM_POINTS (int ) ;
 int GET_TOUCH_ID (int ,int) ;
 int GET_X (int ,int) ;
 int GET_Y (int ,int) ;
 int MAX_TOUCH_ID ;
 int NO_POINTS ;
 int callout_reset (int *,int ,void (*) (void*),struct ft5406ts_softc*) ;
 int device_printf (int ,char*,int) ;
 int evdev_push_event (int ,int ,int ,int) ;
 int evdev_sync (int ) ;
 int memcpy (int ,int*,int ) ;

__attribute__((used)) static void
ft5406ts_callout(void *data)
{
 struct ft5406ts_softc *sc = (struct ft5406ts_softc *)data;
 int points;
 int id, i, x, y;

 FT5406_LOCK_ASSERT(sc);

 memcpy(sc->sc_window, sc->touch_buf, FT5406_WINDOW_SIZE);
 sc->touch_buf[FT5406_NUM_POINTS] = NO_POINTS;

 points = GET_NUM_POINTS(sc->sc_window);



 if (points == NO_POINTS)
  goto out;

 for (i = 0; i < points; i++) {
  id = GET_TOUCH_ID(sc->sc_window, i);
  x = GET_X(sc->sc_window, i);
  y = GET_Y(sc->sc_window, i);

  if (id > MAX_TOUCH_ID) {
   device_printf(sc->sc_dev, "bad touch id: %d", id);
   continue;
  }
  evdev_push_event(sc->sc_evdev, EV_ABS, ABS_MT_SLOT, id);
  evdev_push_event(sc->sc_evdev, EV_ABS, ABS_MT_TRACKING_ID, id);
  evdev_push_event(sc->sc_evdev, EV_ABS, ABS_MT_POSITION_X, x);
  evdev_push_event(sc->sc_evdev, EV_ABS, ABS_MT_POSITION_Y, y);
 }
 evdev_sync(sc->sc_evdev);
out:
 callout_reset(&sc->sc_callout, sc->sc_tick, ft5406ts_callout, sc);
}
