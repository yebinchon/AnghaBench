
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ft5406ts_softc {int sc_callout; } ;
struct evdev_dev {int dummy; } ;


 int FT5406_LOCK_ASSERT (struct ft5406ts_softc*) ;
 int callout_stop (int *) ;
 struct ft5406ts_softc* evdev_get_softc (struct evdev_dev*) ;

__attribute__((used)) static int
ft5406ts_ev_close(struct evdev_dev *evdev)
{
 struct ft5406ts_softc *sc = evdev_get_softc(evdev);

 FT5406_LOCK_ASSERT(sc);

 callout_stop(&sc->sc_callout);

 return (0);
}
