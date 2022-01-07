
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_ndis_data {struct wpa_driver_ndis_data* adapter_desc; struct wpa_driver_ndis_data* adapter_name; scalar_t__ wzc_disabled; int * ctx; scalar_t__ events; int event_avail; } ;


 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct wpa_driver_ndis_data*,int *) ;
 int eloop_unregister_event (int ,int) ;
 int ndis_events_deinit (scalar_t__) ;
 int ndisuio_notification_deinit (struct wpa_driver_ndis_data*) ;
 int os_free (struct wpa_driver_ndis_data*) ;
 int wpa_driver_ndis_adapter_close (struct wpa_driver_ndis_data*) ;
 int wpa_driver_ndis_disconnect (struct wpa_driver_ndis_data*) ;
 int wpa_driver_ndis_flush_pmkid (struct wpa_driver_ndis_data*) ;
 int wpa_driver_ndis_poll_timeout ;
 scalar_t__ wpa_driver_ndis_radio_off (struct wpa_driver_ndis_data*) ;
 int wpa_driver_ndis_scan_timeout ;
 int wpa_driver_ndis_set_wzc (struct wpa_driver_ndis_data*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wpa_driver_ndis_deinit(void *priv)
{
 struct wpa_driver_ndis_data *drv = priv;
 eloop_cancel_timeout(wpa_driver_ndis_scan_timeout, drv, drv->ctx);
 eloop_cancel_timeout(wpa_driver_ndis_poll_timeout, drv, ((void*)0));
 wpa_driver_ndis_flush_pmkid(drv);
 wpa_driver_ndis_disconnect(drv);
 if (wpa_driver_ndis_radio_off(drv) < 0) {
  wpa_printf(MSG_DEBUG, "NDIS: failed to disassociate and turn "
      "radio off");
 }

 wpa_driver_ndis_adapter_close(drv);

 if (drv->wzc_disabled)
  wpa_driver_ndis_set_wzc(drv, 1);




 os_free(drv->adapter_desc);
 os_free(drv);
}
