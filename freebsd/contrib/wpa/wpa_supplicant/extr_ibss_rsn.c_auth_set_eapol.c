
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wpa_eapol_variable ;
typedef int u8 ;
struct ibss_rsn_peer {int dummy; } ;
struct ibss_rsn {int dummy; } ;


 int MSG_DEBUG ;

 struct ibss_rsn_peer* ibss_rsn_get_peer (struct ibss_rsn*,int const*) ;
 int ibss_set_sta_authorized (struct ibss_rsn*,struct ibss_rsn_peer*,int) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static void auth_set_eapol(void *ctx, const u8 *addr,
           wpa_eapol_variable var, int value)
{
 struct ibss_rsn *ibss_rsn = ctx;
 struct ibss_rsn_peer *peer = ibss_rsn_get_peer(ibss_rsn, addr);

 if (peer == ((void*)0))
  return;

 switch (var) {
 case 128:
  ibss_set_sta_authorized(ibss_rsn, peer, value);
  break;
 default:

  wpa_printf(MSG_DEBUG, "AUTH: eapol event not handled %d", var);
  break;
 }
}
