
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_srv_bonjour {int resp; int query; int list; } ;


 int dl_list_del (int *) ;
 int os_free (struct p2p_srv_bonjour*) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void wpas_p2p_srv_bonjour_free(struct p2p_srv_bonjour *bsrv)
{
 dl_list_del(&bsrv->list);
 wpabuf_free(bsrv->query);
 wpabuf_free(bsrv->resp);
 os_free(bsrv);
}
