
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {size_t osu_prov_count; int * osu_prov; } ;


 int hs20_free_osu_prov_entry (int *) ;
 int os_free (int *) ;

void hs20_free_osu_prov(struct wpa_supplicant *wpa_s)
{
 size_t i;
 for (i = 0; i < wpa_s->osu_prov_count; i++)
  hs20_free_osu_prov_entry(&wpa_s->osu_prov[i]);
 os_free(wpa_s->osu_prov);
 wpa_s->osu_prov = ((void*)0);
 wpa_s->osu_prov_count = 0;
}
