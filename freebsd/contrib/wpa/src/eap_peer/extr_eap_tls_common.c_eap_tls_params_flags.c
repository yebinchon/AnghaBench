
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection_params {int flags; } ;


 int TLS_CONN_ALLOW_SIGN_RSA_MD5 ;
 int TLS_CONN_DISABLE_SESSION_TICKET ;
 int TLS_CONN_DISABLE_TIME_CHECKS ;
 int TLS_CONN_DISABLE_TLSv1_0 ;
 int TLS_CONN_DISABLE_TLSv1_1 ;
 int TLS_CONN_DISABLE_TLSv1_2 ;
 int TLS_CONN_DISABLE_TLSv1_3 ;
 int TLS_CONN_ENABLE_TLSv1_0 ;
 int TLS_CONN_ENABLE_TLSv1_1 ;
 int TLS_CONN_ENABLE_TLSv1_2 ;
 int TLS_CONN_EXT_CERT_CHECK ;
 int TLS_CONN_SUITEB ;
 int TLS_CONN_SUITEB_NO_ECDH ;
 scalar_t__ os_strstr (char const*,char*) ;

__attribute__((used)) static void eap_tls_params_flags(struct tls_connection_params *params,
     const char *txt)
{
 if (txt == ((void*)0))
  return;
 if (os_strstr(txt, "tls_allow_md5=1"))
  params->flags |= TLS_CONN_ALLOW_SIGN_RSA_MD5;
 if (os_strstr(txt, "tls_disable_time_checks=1"))
  params->flags |= TLS_CONN_DISABLE_TIME_CHECKS;
 if (os_strstr(txt, "tls_disable_session_ticket=1"))
  params->flags |= TLS_CONN_DISABLE_SESSION_TICKET;
 if (os_strstr(txt, "tls_disable_session_ticket=0"))
  params->flags &= ~TLS_CONN_DISABLE_SESSION_TICKET;
 if (os_strstr(txt, "tls_disable_tlsv1_0=1"))
  params->flags |= TLS_CONN_DISABLE_TLSv1_0;
 if (os_strstr(txt, "tls_disable_tlsv1_0=0")) {
  params->flags &= ~TLS_CONN_DISABLE_TLSv1_0;
  params->flags |= TLS_CONN_ENABLE_TLSv1_0;
 }
 if (os_strstr(txt, "tls_disable_tlsv1_1=1"))
  params->flags |= TLS_CONN_DISABLE_TLSv1_1;
 if (os_strstr(txt, "tls_disable_tlsv1_1=0")) {
  params->flags &= ~TLS_CONN_DISABLE_TLSv1_1;
  params->flags |= TLS_CONN_ENABLE_TLSv1_1;
 }
 if (os_strstr(txt, "tls_disable_tlsv1_2=1"))
  params->flags |= TLS_CONN_DISABLE_TLSv1_2;
 if (os_strstr(txt, "tls_disable_tlsv1_2=0")) {
  params->flags &= ~TLS_CONN_DISABLE_TLSv1_2;
  params->flags |= TLS_CONN_ENABLE_TLSv1_2;
 }
 if (os_strstr(txt, "tls_disable_tlsv1_3=1"))
  params->flags |= TLS_CONN_DISABLE_TLSv1_3;
 if (os_strstr(txt, "tls_disable_tlsv1_3=0"))
  params->flags &= ~TLS_CONN_DISABLE_TLSv1_3;
 if (os_strstr(txt, "tls_ext_cert_check=1"))
  params->flags |= TLS_CONN_EXT_CERT_CHECK;
 if (os_strstr(txt, "tls_ext_cert_check=0"))
  params->flags &= ~TLS_CONN_EXT_CERT_CHECK;
 if (os_strstr(txt, "tls_suiteb=1"))
  params->flags |= TLS_CONN_SUITEB;
 if (os_strstr(txt, "tls_suiteb=0"))
  params->flags &= ~TLS_CONN_SUITEB;
 if (os_strstr(txt, "tls_suiteb_no_ecdh=1"))
  params->flags |= TLS_CONN_SUITEB_NO_ECDH;
 if (os_strstr(txt, "tls_suiteb_no_ecdh=0"))
  params->flags &= ~TLS_CONN_SUITEB_NO_ECDH;
}
