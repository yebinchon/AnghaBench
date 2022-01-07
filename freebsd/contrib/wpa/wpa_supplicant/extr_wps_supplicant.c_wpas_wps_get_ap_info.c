
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_ap_info {int bssid; } ;
struct wpa_supplicant {size_t num_wps_ap; struct wps_ap_info* wps_ap; } ;


 int ETH_ALEN ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;

__attribute__((used)) static struct wps_ap_info * wpas_wps_get_ap_info(struct wpa_supplicant *wpa_s,
       const u8 *bssid)
{
 size_t i;

 if (wpa_s->wps_ap == ((void*)0))
  return ((void*)0);

 for (i = 0; i < wpa_s->num_wps_ap; i++) {
  struct wps_ap_info *ap = &wpa_s->wps_ap[i];
  if (os_memcmp(ap->bssid, bssid, ETH_ALEN) == 0)
   return ap;
 }

 return ((void*)0);
}
