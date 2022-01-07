
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eap_server_aka_prime_register () ;
 int eap_server_aka_register () ;
 int eap_server_eke_register () ;
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
 int eap_server_wfa_unauth_tls_register () ;
 int eap_server_wsc_register () ;

int eap_server_register_methods(void)
{
 int ret = 0;
 return ret;
}
