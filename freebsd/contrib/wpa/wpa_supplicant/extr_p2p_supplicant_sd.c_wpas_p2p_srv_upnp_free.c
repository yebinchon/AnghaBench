
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_srv_upnp {struct p2p_srv_upnp* service; int list; } ;


 int dl_list_del (int *) ;
 int os_free (struct p2p_srv_upnp*) ;

__attribute__((used)) static void wpas_p2p_srv_upnp_free(struct p2p_srv_upnp *usrv)
{
 dl_list_del(&usrv->list);
 os_free(usrv->service);
 os_free(usrv);
}
