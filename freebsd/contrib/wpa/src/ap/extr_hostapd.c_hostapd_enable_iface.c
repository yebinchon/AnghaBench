
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hostapd_iface {size_t num_bss; TYPE_2__** bss; TYPE_1__* interfaces; TYPE_4__* conf; } ;
struct TYPE_8__ {TYPE_3__** bss; } ;
struct TYPE_7__ {int iface; } ;
struct TYPE_6__ {int * drv_priv; int driver; } ;
struct TYPE_5__ {scalar_t__ (* driver_init ) (struct hostapd_iface*) ;} ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 scalar_t__ hostapd_config_check (TYPE_4__*,int) ;
 int hostapd_deinit_driver (int ,int *,struct hostapd_iface*) ;
 int hostapd_set_security_params (TYPE_3__*,int) ;
 scalar_t__ hostapd_setup_interface (struct hostapd_iface*) ;
 scalar_t__ stub1 (struct hostapd_iface*) ;
 int wpa_printf (int ,char*,...) ;

int hostapd_enable_iface(struct hostapd_iface *hapd_iface)
{
 size_t j;

 if (hapd_iface->bss[0]->drv_priv != ((void*)0)) {
  wpa_printf(MSG_ERROR, "Interface %s already enabled",
      hapd_iface->conf->bss[0]->iface);
  return -1;
 }

 wpa_printf(MSG_DEBUG, "Enable interface %s",
     hapd_iface->conf->bss[0]->iface);

 for (j = 0; j < hapd_iface->num_bss; j++)
  hostapd_set_security_params(hapd_iface->conf->bss[j], 1);
 if (hostapd_config_check(hapd_iface->conf, 1) < 0) {
  wpa_printf(MSG_INFO, "Invalid configuration - cannot enable");
  return -1;
 }

 if (hapd_iface->interfaces == ((void*)0) ||
     hapd_iface->interfaces->driver_init == ((void*)0) ||
     hapd_iface->interfaces->driver_init(hapd_iface))
  return -1;

 if (hostapd_setup_interface(hapd_iface)) {
  hostapd_deinit_driver(hapd_iface->bss[0]->driver,
          hapd_iface->bss[0]->drv_priv,
          hapd_iface);
  return -1;
 }

 return 0;
}
