
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {TYPE_1__* iface; struct hostapd_config* iconf; } ;
struct hostapd_config {TYPE_2__** bss; } ;
struct TYPE_4__ {scalar_t__ macaddr_acl; int num_deny_mac; int deny_mac; int num_accept_mac; int accept_mac; } ;
struct TYPE_3__ {scalar_t__ drv_max_acl_mac_addrs; } ;


 scalar_t__ ACCEPT_UNLESS_DENIED ;
 scalar_t__ DENY_UNLESS_ACCEPTED ;
 int MSG_DEBUG ;
 int hostapd_set_acl_list (struct hostapd_data*,int ,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void hostapd_set_acl(struct hostapd_data *hapd)
{
 struct hostapd_config *conf = hapd->iconf;
 int err;
 u8 accept_acl;

 if (hapd->iface->drv_max_acl_mac_addrs == 0)
  return;

 if (conf->bss[0]->macaddr_acl == DENY_UNLESS_ACCEPTED) {
  accept_acl = 1;
  err = hostapd_set_acl_list(hapd, conf->bss[0]->accept_mac,
        conf->bss[0]->num_accept_mac,
        accept_acl);
  if (err) {
   wpa_printf(MSG_DEBUG, "Failed to set accept acl");
   return;
  }
 } else if (conf->bss[0]->macaddr_acl == ACCEPT_UNLESS_DENIED) {
  accept_acl = 0;
  err = hostapd_set_acl_list(hapd, conf->bss[0]->deny_mac,
        conf->bss[0]->num_deny_mac,
        accept_acl);
  if (err) {
   wpa_printf(MSG_DEBUG, "Failed to set deny acl");
   return;
  }
 }
}
