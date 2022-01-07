
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct p2p_srv_bonjour {int list; struct wpabuf* resp; struct wpabuf* query; } ;
struct TYPE_2__ {int p2p_srv_bonjour; } ;


 int dl_list_add (int *,int *) ;
 struct p2p_srv_bonjour* os_zalloc (int) ;
 int wpas_p2p_sd_service_update (struct wpa_supplicant*) ;

int wpas_p2p_service_add_bonjour(struct wpa_supplicant *wpa_s,
     struct wpabuf *query, struct wpabuf *resp)
{
 struct p2p_srv_bonjour *bsrv;

 bsrv = os_zalloc(sizeof(*bsrv));
 if (bsrv == ((void*)0))
  return -1;
 bsrv->query = query;
 bsrv->resp = resp;
 dl_list_add(&wpa_s->global->p2p_srv_bonjour, &bsrv->list);

 wpas_p2p_sd_service_update(wpa_s);
 return 0;
}
