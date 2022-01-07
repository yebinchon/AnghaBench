
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int * mesh_params; int * mesh_rsn; int * current_ssid; int * ifmsh; } ;


 int os_free (int *) ;
 int wpa_supplicant_mesh_iface_deinit (struct wpa_supplicant*,int *) ;

__attribute__((used)) static void wpa_supplicant_mesh_deinit(struct wpa_supplicant *wpa_s)
{
 wpa_supplicant_mesh_iface_deinit(wpa_s, wpa_s->ifmsh);
 wpa_s->ifmsh = ((void*)0);
 wpa_s->current_ssid = ((void*)0);
 os_free(wpa_s->mesh_rsn);
 wpa_s->mesh_rsn = ((void*)0);
 os_free(wpa_s->mesh_params);
 wpa_s->mesh_params = ((void*)0);


}
