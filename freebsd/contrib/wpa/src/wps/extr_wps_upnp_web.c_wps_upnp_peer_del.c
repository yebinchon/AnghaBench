
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct upnp_wps_peer {scalar_t__ wps; int list; } ;


 int dl_list_del (int *) ;
 int os_free (struct upnp_wps_peer*) ;
 int wps_deinit (scalar_t__) ;

__attribute__((used)) static void wps_upnp_peer_del(struct upnp_wps_peer *peer)
{
 dl_list_del(&peer->list);
 if (peer->wps)
  wps_deinit(peer->wps);
 os_free(peer);
}
