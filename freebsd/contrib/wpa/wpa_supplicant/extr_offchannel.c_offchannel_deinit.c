
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int offchannel_clear_pending_action_tx (struct wpa_supplicant*) ;
 int wpas_send_action_cb ;

void offchannel_deinit(struct wpa_supplicant *wpa_s)
{
 offchannel_clear_pending_action_tx(wpa_s);
 eloop_cancel_timeout(wpas_send_action_cb, wpa_s, ((void*)0));
}
