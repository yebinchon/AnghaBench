
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_iface {size_t num_bss; int * bss; TYPE_2__* conf; } ;
struct TYPE_4__ {TYPE_1__** bss; } ;
struct TYPE_3__ {int iface; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int hostapd_clear_old (struct hostapd_iface*) ;
 scalar_t__ hostapd_config_check (TYPE_2__*,int) ;
 int hostapd_reload_bss (int ) ;
 int hostapd_set_security_params (TYPE_1__*,int) ;
 int wpa_printf (int ,char*,...) ;

int hostapd_reload_iface(struct hostapd_iface *hapd_iface)
{
 size_t j;

 wpa_printf(MSG_DEBUG, "Reload interface %s",
     hapd_iface->conf->bss[0]->iface);
 for (j = 0; j < hapd_iface->num_bss; j++)
  hostapd_set_security_params(hapd_iface->conf->bss[j], 1);
 if (hostapd_config_check(hapd_iface->conf, 1) < 0) {
  wpa_printf(MSG_ERROR, "Updated configuration is invalid");
  return -1;
 }
 hostapd_clear_old(hapd_iface);
 for (j = 0; j < hapd_iface->num_bss; j++)
  hostapd_reload_bss(hapd_iface->bss[j]);

 return 0;
}
