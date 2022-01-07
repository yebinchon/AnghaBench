
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ha_softc {int ha_disconnect; int ha_wakeup; int ha_lock; } ;
typedef int ctl_ha_status ;
typedef int ctl_ha_channel ;


 int CTL_HA_STATUS_SUCCESS ;
 struct ha_softc ha_softc ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int*) ;

ctl_ha_status
ctl_ha_msg_abort(ctl_ha_channel channel)
{
 struct ha_softc *softc = &ha_softc;

 mtx_lock(&softc->ha_lock);
 softc->ha_disconnect = 1;
 softc->ha_wakeup = 1;
 mtx_unlock(&softc->ha_lock);
 wakeup(&softc->ha_wakeup);
 return (CTL_HA_STATUS_SUCCESS);
}
