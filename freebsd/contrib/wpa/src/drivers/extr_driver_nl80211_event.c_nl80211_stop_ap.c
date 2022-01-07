
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_nl80211_data {int ctx; } ;
struct nlattr {int dummy; } ;


 int EVENT_INTERFACE_UNAVAILABLE ;
 int wpa_supplicant_event (int ,int ,int *) ;

__attribute__((used)) static void nl80211_stop_ap(struct wpa_driver_nl80211_data *drv,
       struct nlattr **tb)
{
 wpa_supplicant_event(drv->ctx, EVENT_INTERFACE_UNAVAILABLE, ((void*)0));
}
