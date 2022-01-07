
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct p2p_srv_upnp {int list; int * service; int version; } ;
struct TYPE_2__ {int p2p_srv_upnp; } ;


 int dl_list_add (int *,int *) ;
 int os_free (struct p2p_srv_upnp*) ;
 int * os_strdup (char const*) ;
 struct p2p_srv_upnp* os_zalloc (int) ;
 int wpas_p2p_sd_service_update (struct wpa_supplicant*) ;
 scalar_t__ wpas_p2p_service_get_upnp (struct wpa_supplicant*,int ,char const*) ;

int wpas_p2p_service_add_upnp(struct wpa_supplicant *wpa_s, u8 version,
         const char *service)
{
 struct p2p_srv_upnp *usrv;

 if (wpas_p2p_service_get_upnp(wpa_s, version, service))
  return 0;
 usrv = os_zalloc(sizeof(*usrv));
 if (usrv == ((void*)0))
  return -1;
 usrv->version = version;
 usrv->service = os_strdup(service);
 if (usrv->service == ((void*)0)) {
  os_free(usrv);
  return -1;
 }
 dl_list_add(&wpa_s->global->p2p_srv_upnp, &usrv->list);

 wpas_p2p_sd_service_update(wpa_s);
 return 0;
}
