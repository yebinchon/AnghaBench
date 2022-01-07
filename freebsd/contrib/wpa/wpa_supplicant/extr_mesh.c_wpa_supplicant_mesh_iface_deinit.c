
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {int dummy; } ;
struct hostapd_iface {TYPE_1__* mconf; } ;
struct TYPE_2__ {int * rsn_ie; } ;


 int hostapd_interface_deinit (struct hostapd_iface*) ;
 int hostapd_interface_free (struct hostapd_iface*) ;
 int mesh_mpm_deinit (struct wpa_supplicant*,struct hostapd_iface*) ;
 int os_free (TYPE_1__*) ;

void wpa_supplicant_mesh_iface_deinit(struct wpa_supplicant *wpa_s,
          struct hostapd_iface *ifmsh)
{
 if (!ifmsh)
  return;

 if (ifmsh->mconf) {
  mesh_mpm_deinit(wpa_s, ifmsh);
  if (ifmsh->mconf->rsn_ie) {
   ifmsh->mconf->rsn_ie = ((void*)0);






  }
  os_free(ifmsh->mconf);
  ifmsh->mconf = ((void*)0);
 }


 hostapd_interface_deinit(ifmsh);
 hostapd_interface_free(ifmsh);
}
