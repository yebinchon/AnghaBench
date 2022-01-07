
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;
struct p2p_srv_bonjour {int dummy; } ;


 int wpas_p2p_sd_service_update (struct wpa_supplicant*) ;
 struct p2p_srv_bonjour* wpas_p2p_service_get_bonjour (struct wpa_supplicant*,struct wpabuf const*) ;
 int wpas_p2p_srv_bonjour_free (struct p2p_srv_bonjour*) ;

int wpas_p2p_service_del_bonjour(struct wpa_supplicant *wpa_s,
     const struct wpabuf *query)
{
 struct p2p_srv_bonjour *bsrv;

 bsrv = wpas_p2p_service_get_bonjour(wpa_s, query);
 if (bsrv == ((void*)0))
  return -1;
 wpas_p2p_srv_bonjour_free(bsrv);
 wpas_p2p_sd_service_update(wpa_s);
 return 0;
}
