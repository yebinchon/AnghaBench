
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eap_peer_aka_prime_register () ;
 int eap_peer_aka_register () ;
 int eap_peer_eke_register () ;
 int eap_peer_fast_register () ;
 int eap_peer_gpsk_register () ;
 int eap_peer_gtc_register () ;
 int eap_peer_ikev2_register () ;
 int eap_peer_leap_register () ;
 int eap_peer_md5_register () ;
 int eap_peer_mschapv2_register () ;
 int eap_peer_otp_register () ;
 int eap_peer_pax_register () ;
 int eap_peer_peap_register () ;
 int eap_peer_psk_register () ;
 int eap_peer_pwd_register () ;
 int eap_peer_sake_register () ;
 int eap_peer_sim_register () ;
 int eap_peer_teap_register () ;
 int eap_peer_tls_register () ;
 int eap_peer_tnc_register () ;
 int eap_peer_ttls_register () ;
 int eap_peer_unauth_tls_register () ;
 int eap_peer_vendor_test_register () ;
 int eap_peer_wfa_unauth_tls_register () ;
 int eap_peer_wsc_register () ;
 int eap_server_aka_prime_register () ;
 int eap_server_aka_register () ;
 int eap_server_fast_register () ;
 int eap_server_gpsk_register () ;
 int eap_server_gtc_register () ;
 int eap_server_identity_register () ;
 int eap_server_ikev2_register () ;
 int eap_server_md5_register () ;
 int eap_server_mschapv2_register () ;
 int eap_server_pax_register () ;
 int eap_server_peap_register () ;
 int eap_server_psk_register () ;
 int eap_server_pwd_register () ;
 int eap_server_sake_register () ;
 int eap_server_sim_register () ;
 int eap_server_teap_register () ;
 int eap_server_tls_register () ;
 int eap_server_tlv_register () ;
 int eap_server_tnc_register () ;
 int eap_server_ttls_register () ;
 int eap_server_unauth_tls_register () ;
 int eap_server_vendor_test_register () ;
 int eap_server_wsc_register () ;

int eap_register_methods(void)
{
 int ret = 0;
 return ret;
}
