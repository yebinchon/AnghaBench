
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int eloop_register_timeout (int ,int ,int ,struct wpa_supplicant*,int *) ;
 int hs20_continue_icon_fetch ;
 int hs20_osu_icon_fetch_result (struct wpa_supplicant*,int) ;

void hs20_icon_fetch_failed(struct wpa_supplicant *wpa_s)
{
 hs20_osu_icon_fetch_result(wpa_s, -1);
 eloop_cancel_timeout(hs20_continue_icon_fetch, wpa_s, ((void*)0));
 eloop_register_timeout(0, 0, hs20_continue_icon_fetch, wpa_s, ((void*)0));
}
