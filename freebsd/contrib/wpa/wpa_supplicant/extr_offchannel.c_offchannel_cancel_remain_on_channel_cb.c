
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ off_channel_freq; } ;



void offchannel_cancel_remain_on_channel_cb(struct wpa_supplicant *wpa_s,
         unsigned int freq)
{
 wpa_s->off_channel_freq = 0;
}
