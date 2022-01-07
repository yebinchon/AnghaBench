
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next; } ;
struct wpa_supplicant {TYPE_1__ icon_head; } ;


 int eloop_cancel_timeout (int ,struct wpa_supplicant*,int *) ;
 int hs20_continue_icon_fetch ;
 int hs20_del_icon (struct wpa_supplicant*,int *,int *) ;
 int hs20_free_osu_prov (struct wpa_supplicant*) ;

void hs20_deinit(struct wpa_supplicant *wpa_s)
{
 eloop_cancel_timeout(hs20_continue_icon_fetch, wpa_s, ((void*)0));
 hs20_free_osu_prov(wpa_s);
 if (wpa_s->icon_head.next)
  hs20_del_icon(wpa_s, ((void*)0), ((void*)0));
}
