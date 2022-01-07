
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ha_softc {int * ha_handler; } ;
typedef int ctl_ha_status ;
typedef size_t ctl_ha_channel ;
typedef int ctl_evt_handler ;


 size_t CTL_HA_CHAN_MAX ;
 int CTL_HA_STATUS_SUCCESS ;
 int KASSERT (int,char*) ;
 struct ha_softc ha_softc ;

ctl_ha_status
ctl_ha_msg_register(ctl_ha_channel channel, ctl_evt_handler handler)
{
 struct ha_softc *softc = &ha_softc;

 KASSERT(channel < CTL_HA_CHAN_MAX,
     ("Wrong CTL HA channel %d", channel));
 softc->ha_handler[channel] = handler;
 return (CTL_HA_STATUS_SUCCESS);
}
