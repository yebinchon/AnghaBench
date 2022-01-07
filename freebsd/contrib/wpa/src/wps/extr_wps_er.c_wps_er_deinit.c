
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_er {int deinitializing; void (* deinit_done_cb ) (void*) ;void* deinit_done_ctx; int ap_unsubscribing; int http_srv; } ;


 int MSG_DEBUG ;
 scalar_t__ dl_list_empty (int *) ;
 int eloop_register_timeout (int,int ,int ,struct wps_er*,int *) ;
 int http_server_deinit (int ) ;
 int wpa_printf (int ,char*) ;
 int wps_er_ap_remove_all (struct wps_er*) ;
 int wps_er_deinit_finish ;
 int wps_er_ssdp_deinit (struct wps_er*) ;

void wps_er_deinit(struct wps_er *er, void (*cb)(void *ctx), void *ctx)
{
 if (er == ((void*)0))
  return;
 http_server_deinit(er->http_srv);
 wps_er_ap_remove_all(er);
 wps_er_ssdp_deinit(er);
 eloop_register_timeout(dl_list_empty(&er->ap_unsubscribing) ? 0 : 5, 0,
          wps_er_deinit_finish, er, ((void*)0));
 wpa_printf(MSG_DEBUG, "WPS ER: Finish deinit from timeout");
 er->deinitializing = 1;
 er->deinit_done_cb = cb;
 er->deinit_done_ctx = ctx;
}
