
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int icon_head; } ;


 int dl_list_init (int *) ;

void hs20_init(struct wpa_supplicant *wpa_s)
{
 dl_list_init(&wpa_s->icon_head);
}
