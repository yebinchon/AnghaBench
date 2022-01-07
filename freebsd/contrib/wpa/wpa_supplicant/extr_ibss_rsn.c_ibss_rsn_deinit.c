
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibss_rsn_peer {struct ibss_rsn_peer* next; } ;
struct ibss_rsn {scalar_t__ auth_group; struct ibss_rsn_peer* peers; } ;


 int ibss_rsn_free (struct ibss_rsn_peer*) ;
 int os_free (struct ibss_rsn*) ;
 int wpa_deinit (scalar_t__) ;

void ibss_rsn_deinit(struct ibss_rsn *ibss_rsn)
{
 struct ibss_rsn_peer *peer, *prev;

 if (ibss_rsn == ((void*)0))
  return;

 peer = ibss_rsn->peers;
 while (peer) {
  prev = peer;
  peer = peer->next;
  ibss_rsn_free(prev);
 }

 if (ibss_rsn->auth_group)
  wpa_deinit(ibss_rsn->auth_group);
 os_free(ibss_rsn);

}
