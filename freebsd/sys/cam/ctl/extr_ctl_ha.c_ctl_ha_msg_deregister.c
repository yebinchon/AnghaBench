
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ha_softc {int ** ha_handler; } ;
typedef int ctl_ha_status ;
typedef size_t ctl_ha_channel ;


 size_t CTL_HA_CHAN_MAX ;
 int CTL_HA_STATUS_SUCCESS ;
 int KASSERT (int,char*) ;
 struct ha_softc ha_softc ;

ctl_ha_status
ctl_ha_msg_deregister(ctl_ha_channel channel)
{
 struct ha_softc *softc = &ha_softc;

 KASSERT(channel < CTL_HA_CHAN_MAX,
     ("Wrong CTL HA channel %d", channel));
 softc->ha_handler[channel] = ((void*)0);
 return (CTL_HA_STATUS_SUCCESS);
}
