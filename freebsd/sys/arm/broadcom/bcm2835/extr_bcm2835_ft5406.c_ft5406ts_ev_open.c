
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ft5406ts_softc {int sc_tick; int sc_callout; } ;
struct evdev_dev {int dummy; } ;


 int FT5406_LOCK_ASSERT (struct ft5406ts_softc*) ;
 int callout_reset (int *,int ,int ,struct ft5406ts_softc*) ;
 struct ft5406ts_softc* evdev_get_softc (struct evdev_dev*) ;
 int ft5406ts_callout ;

__attribute__((used)) static int
ft5406ts_ev_open(struct evdev_dev *evdev)
{
 struct ft5406ts_softc *sc = evdev_get_softc(evdev);

 FT5406_LOCK_ASSERT(sc);

 callout_reset(&sc->sc_callout, sc->sc_tick, ft5406ts_callout, sc);

 return (0);
}
