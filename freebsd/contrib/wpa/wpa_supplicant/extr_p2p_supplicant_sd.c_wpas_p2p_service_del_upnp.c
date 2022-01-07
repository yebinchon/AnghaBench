
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;
struct p2p_srv_upnp {int dummy; } ;


 int wpas_p2p_sd_service_update (struct wpa_supplicant*) ;
 struct p2p_srv_upnp* wpas_p2p_service_get_upnp (struct wpa_supplicant*,int ,char const*) ;
 int wpas_p2p_srv_upnp_free (struct p2p_srv_upnp*) ;

int wpas_p2p_service_del_upnp(struct wpa_supplicant *wpa_s, u8 version,
         const char *service)
{
 struct p2p_srv_upnp *usrv;

 usrv = wpas_p2p_service_get_upnp(wpa_s, version, service);
 if (usrv == ((void*)0))
  return -1;
 wpas_p2p_srv_upnp_free(usrv);
 wpas_p2p_sd_service_update(wpa_s);
 return 0;
}
