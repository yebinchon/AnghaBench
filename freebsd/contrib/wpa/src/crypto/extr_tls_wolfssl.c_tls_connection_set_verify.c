
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {int ca_cert_verify; int ssl; } ;


 int MSG_DEBUG ;
 int SSL_VERIFY_FAIL_IF_NO_PEER_CERT ;
 int SSL_VERIFY_NONE ;
 int SSL_VERIFY_PEER ;
 int * tls_verify_cb ;
 int wolfSSL_set_accept_state (int ) ;
 int wolfSSL_set_verify (int ,int,int *) ;
 int wpa_printf (int ,char*,int) ;

int tls_connection_set_verify(void *ssl_ctx, struct tls_connection *conn,
         int verify_peer, unsigned int flags,
         const u8 *session_ctx, size_t session_ctx_len)
{
 if (!conn)
  return -1;

 wpa_printf(MSG_DEBUG, "SSL: set verify: %d", verify_peer);

 if (verify_peer) {
  conn->ca_cert_verify = 1;
  wolfSSL_set_verify(conn->ssl, SSL_VERIFY_PEER |
       SSL_VERIFY_FAIL_IF_NO_PEER_CERT,
       tls_verify_cb);
 } else {
  conn->ca_cert_verify = 0;
  wolfSSL_set_verify(conn->ssl, SSL_VERIFY_NONE, ((void*)0));
 }

 wolfSSL_set_accept_state(conn->ssl);



 return 0;
}
