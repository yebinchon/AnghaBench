
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int bss_id; int bss; } ;


 int dl_list_init (int *) ;

int wpa_bss_init(struct wpa_supplicant *wpa_s)
{
 dl_list_init(&wpa_s->bss);
 dl_list_init(&wpa_s->bss_id);
 return 0;
}
