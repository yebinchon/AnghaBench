
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int own_addr; } ;
struct wpa_ssid {int dummy; } ;
struct ibss_rsn {struct wpa_supplicant* wpa_s; } ;


 scalar_t__ ibss_rsn_auth_init_group (struct ibss_rsn*,int ,struct wpa_ssid*) ;
 int ibss_rsn_deinit (struct ibss_rsn*) ;
 struct ibss_rsn* os_zalloc (int) ;

struct ibss_rsn * ibss_rsn_init(struct wpa_supplicant *wpa_s,
    struct wpa_ssid *ssid)
{
 struct ibss_rsn *ibss_rsn;

 ibss_rsn = os_zalloc(sizeof(*ibss_rsn));
 if (ibss_rsn == ((void*)0))
  return ((void*)0);
 ibss_rsn->wpa_s = wpa_s;

 if (ibss_rsn_auth_init_group(ibss_rsn, wpa_s->own_addr, ssid) < 0) {
  ibss_rsn_deinit(ibss_rsn);
  return ((void*)0);
 }

 return ibss_rsn;
}
