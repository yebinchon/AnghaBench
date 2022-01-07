
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ha_softc {int ha_wakeup; int ha_lock; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int*) ;

__attribute__((used)) static void
ctl_ha_conn_wake(struct ha_softc *softc)
{

 mtx_lock(&softc->ha_lock);
 softc->ha_wakeup = 1;
 mtx_unlock(&softc->ha_lock);
 wakeup(&softc->ha_wakeup);
}
