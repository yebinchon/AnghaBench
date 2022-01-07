
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ibss_rsn_peer {int own_auth_tx; int authentication_status; } ;
struct ibss_rsn {int dummy; } ;


 int IBSS_RSN_AUTH_BY_US ;
 int eloop_register_timeout (int,int ,int ,struct ibss_rsn_peer*,int *) ;
 int ibss_rsn_auth_init (struct ibss_rsn*,struct ibss_rsn_peer*) ;
 int ibss_rsn_auth_timeout ;
 struct ibss_rsn_peer* ibss_rsn_get_peer (struct ibss_rsn*,int const*) ;
 struct ibss_rsn_peer* ibss_rsn_peer_init (struct ibss_rsn*,int const*) ;
 int ibss_rsn_send_auth (struct ibss_rsn*,int const*,int) ;
 int os_get_reltime (int *) ;

int ibss_rsn_start(struct ibss_rsn *ibss_rsn, const u8 *addr)
{
 struct ibss_rsn_peer *peer;
 int res;

 if (!ibss_rsn)
  return -1;


 peer = ibss_rsn_get_peer(ibss_rsn, addr);
 if (peer)
  return 0;

 peer = ibss_rsn_peer_init(ibss_rsn, addr);
 if (peer == ((void*)0))
  return -1;


 res = ibss_rsn_send_auth(ibss_rsn, addr, 1);
 if (res) {




  peer->authentication_status |= IBSS_RSN_AUTH_BY_US;
  return ibss_rsn_auth_init(ibss_rsn, peer);
 } else {
  os_get_reltime(&peer->own_auth_tx);
  eloop_register_timeout(1, 0, ibss_rsn_auth_timeout, peer, ((void*)0));
 }

 return 0;
}
