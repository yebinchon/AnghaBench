
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {void const* pending_action_tx; } ;



const void * offchannel_pending_action_tx(struct wpa_supplicant *wpa_s)
{
 return wpa_s->pending_action_tx;
}
