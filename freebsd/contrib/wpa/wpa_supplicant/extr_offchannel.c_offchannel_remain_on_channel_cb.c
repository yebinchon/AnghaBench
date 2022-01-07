
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {unsigned int off_channel_freq; scalar_t__ roc_waiting_drv_freq; } ;


 int wpas_send_action_cb (struct wpa_supplicant*,int *) ;

void offchannel_remain_on_channel_cb(struct wpa_supplicant *wpa_s,
         unsigned int freq, unsigned int duration)
{
 wpa_s->roc_waiting_drv_freq = 0;
 wpa_s->off_channel_freq = freq;
 wpas_send_action_cb(wpa_s, ((void*)0));
}
