
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wpa_driver_ops {int dummy; } ;
struct hostapd_iface {int driver_ap_teardown; int drv_flags; size_t num_bss; struct hostapd_data** bss; TYPE_2__* conf; } ;
struct hostapd_data {TYPE_3__* conf; int * drv_priv; struct wpa_driver_ops* driver; int msg_ctx; } ;
struct TYPE_6__ {int iface; } ;
struct TYPE_5__ {TYPE_1__** bss; } ;
struct TYPE_4__ {int iface; } ;


 int AP_EVENT_DISABLED ;
 int HAPD_IFACE_DISABLED ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT ;
 int hostapd_bss_deinit_no_free (struct hostapd_data*) ;
 int hostapd_cleanup_cs_params (struct hostapd_data*) ;
 int hostapd_cleanup_iface_partial (struct hostapd_iface*) ;
 int hostapd_deinit_driver (struct wpa_driver_ops const*,void*,struct hostapd_iface*) ;
 int hostapd_free_hapd_data (struct hostapd_data*) ;
 int hostapd_set_state (struct hostapd_iface*,int ) ;
 int wpa_msg (int ,int ,int ) ;
 int wpa_printf (int ,char*,int ) ;

int hostapd_disable_iface(struct hostapd_iface *hapd_iface)
{
 size_t j;
 const struct wpa_driver_ops *driver;
 void *drv_priv;

 if (hapd_iface == ((void*)0))
  return -1;

 if (hapd_iface->bss[0]->drv_priv == ((void*)0)) {
  wpa_printf(MSG_INFO, "Interface %s already disabled",
      hapd_iface->conf->bss[0]->iface);
  return -1;
 }

 wpa_msg(hapd_iface->bss[0]->msg_ctx, MSG_INFO, AP_EVENT_DISABLED);
 driver = hapd_iface->bss[0]->driver;
 drv_priv = hapd_iface->bss[0]->drv_priv;

 hapd_iface->driver_ap_teardown =
  !!(hapd_iface->drv_flags &
     WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT);







 for (j = 0; j < hapd_iface->num_bss; j++) {
  struct hostapd_data *hapd = hapd_iface->bss[j];
  hostapd_bss_deinit_no_free(hapd);
  hostapd_free_hapd_data(hapd);
 }

 hostapd_deinit_driver(driver, drv_priv, hapd_iface);




 hostapd_cleanup_iface_partial(hapd_iface);

 wpa_printf(MSG_DEBUG, "Interface %s disabled",
     hapd_iface->bss[0]->conf->iface);
 hostapd_set_state(hapd_iface, HAPD_IFACE_DISABLED);
 return 0;
}
