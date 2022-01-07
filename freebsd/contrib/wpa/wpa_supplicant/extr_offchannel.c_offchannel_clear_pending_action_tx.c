
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int * pending_action_tx; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int *) ;
 int wpabuf_free (int *) ;

void offchannel_clear_pending_action_tx(struct wpa_supplicant *wpa_s)
{
 wpa_printf(MSG_DEBUG,
     "Off-channel: Clear pending Action frame TX (pending_action_tx=%p",
     wpa_s->pending_action_tx);
 wpabuf_free(wpa_s->pending_action_tx);
 wpa_s->pending_action_tx = ((void*)0);
}
