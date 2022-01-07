
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibss_rsn_peer {int supp; int auth; } ;


 int eloop_cancel_timeout (int ,struct ibss_rsn_peer*,int *) ;
 int ibss_rsn_auth_timeout ;
 int os_free (struct ibss_rsn_peer*) ;
 int wpa_auth_sta_deinit (int ) ;
 int wpa_sm_deinit (int ) ;

__attribute__((used)) static void ibss_rsn_free(struct ibss_rsn_peer *peer)
{
 eloop_cancel_timeout(ibss_rsn_auth_timeout, peer, ((void*)0));
 wpa_auth_sta_deinit(peer->auth);
 wpa_sm_deinit(peer->supp);
 os_free(peer);
}
