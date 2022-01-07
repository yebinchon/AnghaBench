
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ha_softc {int ha_shutdown; int ha_wakeup; int ha_lock; } ;
struct ctl_softc {int dummy; } ;


 int SCHEDULER_STOPPED () ;
 struct ha_softc ha_softc ;
 int hz ;
 int msleep (int*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int*) ;

void
ctl_ha_msg_shutdown(struct ctl_softc *ctl_softc)
{
 struct ha_softc *softc = &ha_softc;


 mtx_lock(&softc->ha_lock);
 if (softc->ha_shutdown < 2) {
  softc->ha_shutdown = 1;
  softc->ha_wakeup = 1;
  wakeup(&softc->ha_wakeup);
  while (softc->ha_shutdown < 2 && !SCHEDULER_STOPPED()) {
   msleep(&softc->ha_wakeup, &softc->ha_lock, 0,
       "shutdown", hz);
  }
 }
 mtx_unlock(&softc->ha_lock);
}
