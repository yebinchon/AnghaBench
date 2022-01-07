
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int fetch_osu_icon_in_progress; } ;


 scalar_t__ eloop_is_timeout_registered (int ,struct wpa_supplicant*,int *) ;
 int hs20_continue_icon_fetch ;
 int hs20_icon_fetch_failed (struct wpa_supplicant*) ;

void hs20_notify_parse_done(struct wpa_supplicant *wpa_s)
{
 if (!wpa_s->fetch_osu_icon_in_progress)
  return;
 if (eloop_is_timeout_registered(hs20_continue_icon_fetch, wpa_s, ((void*)0)))
  return;





 hs20_icon_fetch_failed(wpa_s);
}
