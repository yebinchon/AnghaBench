
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ version; scalar_t__ ha_mode; scalar_t__ ha_id; scalar_t__ max_luns; scalar_t__ max_ports; scalar_t__ max_init_per_port; } ;
union ctl_ha_msg {TYPE_1__ login; } ;
struct ctl_softc {scalar_t__ ha_mode; scalar_t__ ha_id; } ;


 int CTL_HA_CHAN_CTL ;
 scalar_t__ CTL_HA_VERSION ;
 scalar_t__ CTL_MAX_INIT_PER_PORT ;
 int ctl_ha_msg_abort (int ) ;
 scalar_t__ ctl_max_luns ;
 scalar_t__ ctl_max_ports ;
 int printf (char*,...) ;

__attribute__((used)) static void
ctl_isc_login(struct ctl_softc *softc, union ctl_ha_msg *msg, int len)
{

 if (msg->login.version != CTL_HA_VERSION) {
  printf("CTL HA peers have different versions %d != %d\n",
      msg->login.version, CTL_HA_VERSION);
  ctl_ha_msg_abort(CTL_HA_CHAN_CTL);
  return;
 }
 if (msg->login.ha_mode != softc->ha_mode) {
  printf("CTL HA peers have different ha_mode %d != %d\n",
      msg->login.ha_mode, softc->ha_mode);
  ctl_ha_msg_abort(CTL_HA_CHAN_CTL);
  return;
 }
 if (msg->login.ha_id == softc->ha_id) {
  printf("CTL HA peers have same ha_id %d\n", msg->login.ha_id);
  ctl_ha_msg_abort(CTL_HA_CHAN_CTL);
  return;
 }
 if (msg->login.max_luns != ctl_max_luns ||
     msg->login.max_ports != ctl_max_ports ||
     msg->login.max_init_per_port != CTL_MAX_INIT_PER_PORT) {
  printf("CTL HA peers have different limits\n");
  ctl_ha_msg_abort(CTL_HA_CHAN_CTL);
  return;
 }
}
