
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_softc {int othersc_pool; } ;


 int CTL_HA_CHAN_CTL ;
 scalar_t__ CTL_HA_STATUS_SUCCESS ;
 int CTL_POOL_ENTRIES_OTHER_SC ;
 int EIO ;
 int ENOMEM ;
 struct ctl_softc* control_softc ;
 int ctl_ha_msg_destroy (struct ctl_softc*) ;
 scalar_t__ ctl_ha_msg_init (struct ctl_softc*) ;
 scalar_t__ ctl_ha_msg_register (int ,int ) ;
 int ctl_isc_event_handler ;
 scalar_t__ ctl_pool_create (struct ctl_softc*,char*,int ,int *) ;
 int ctl_pool_free (int ) ;

__attribute__((used)) static int
ctl_ha_init(void)
{
 struct ctl_softc *softc = control_softc;

 if (ctl_pool_create(softc, "othersc", CTL_POOL_ENTRIES_OTHER_SC,
                     &softc->othersc_pool) != 0)
  return (ENOMEM);
 if (ctl_ha_msg_init(softc) != CTL_HA_STATUS_SUCCESS) {
  ctl_pool_free(softc->othersc_pool);
  return (EIO);
 }
 if (ctl_ha_msg_register(CTL_HA_CHAN_CTL, ctl_isc_event_handler)
     != CTL_HA_STATUS_SUCCESS) {
  ctl_ha_msg_destroy(softc);
  ctl_pool_free(softc->othersc_pool);
  return (EIO);
 }
 return (0);
}
