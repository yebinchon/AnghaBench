
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibss_rsn_peer {int authentication_status; } ;


 int IBSS_RSN_AUTH_BY_US ;
 int IBSS_RSN_AUTH_EAPOL_BY_US ;

__attribute__((used)) static int ibss_rsn_is_auth_started(struct ibss_rsn_peer * peer)
{
 return peer->authentication_status &
        (IBSS_RSN_AUTH_BY_US | IBSS_RSN_AUTH_EAPOL_BY_US);
}
