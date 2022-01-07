
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar {int multi_ap_backhaul_network_key_len; int multi_ap_backhaul_network_key; int extra_cred; } ;


 int bin_clear_free (int ,int ) ;
 int eloop_cancel_timeout (int ,struct wps_registrar*,int *) ;
 int os_free (struct wps_registrar*) ;
 int wpabuf_clear_free (int ) ;
 int wps_registrar_flush (struct wps_registrar*) ;
 int wps_registrar_pbc_timeout ;
 int wps_registrar_set_selected_timeout ;

void wps_registrar_deinit(struct wps_registrar *reg)
{
 if (reg == ((void*)0))
  return;
 eloop_cancel_timeout(wps_registrar_pbc_timeout, reg, ((void*)0));
 eloop_cancel_timeout(wps_registrar_set_selected_timeout, reg, ((void*)0));
 wps_registrar_flush(reg);
 wpabuf_clear_free(reg->extra_cred);
 bin_clear_free(reg->multi_ap_backhaul_network_key,
         reg->multi_ap_backhaul_network_key_len);
 os_free(reg);
}
