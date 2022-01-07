
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct tls_data {scalar_t__ tls_session_lifetime; } ;
struct tls_connection {int ca_cert_verify; unsigned int flags; int ssl; } ;
typedef int counter ;


 int SSL_VERIFY_CLIENT_ONCE ;
 int SSL_VERIFY_FAIL_IF_NO_PEER_CERT ;
 int SSL_VERIFY_NONE ;
 int SSL_VERIFY_PEER ;
 int SSL_set_accept_state (int ) ;
 int SSL_set_session_id_context (int ,unsigned char const*,size_t) ;
 int SSL_set_verify (int ,int,int *) ;
 scalar_t__ tls_set_conn_flags (struct tls_connection*,unsigned int,int *) ;
 int * tls_verify_cb ;

int tls_connection_set_verify(void *ssl_ctx, struct tls_connection *conn,
         int verify_peer, unsigned int flags,
         const u8 *session_ctx, size_t session_ctx_len)
{
 static int counter = 0;
 struct tls_data *data = ssl_ctx;

 if (conn == ((void*)0))
  return -1;

 if (verify_peer) {
  conn->ca_cert_verify = 1;
  SSL_set_verify(conn->ssl, SSL_VERIFY_PEER |
          SSL_VERIFY_FAIL_IF_NO_PEER_CERT |
          SSL_VERIFY_CLIENT_ONCE, tls_verify_cb);
 } else {
  conn->ca_cert_verify = 0;
  SSL_set_verify(conn->ssl, SSL_VERIFY_NONE, ((void*)0));
 }

 if (tls_set_conn_flags(conn, flags, ((void*)0)) < 0)
  return -1;
 conn->flags = flags;

 SSL_set_accept_state(conn->ssl);

 if (data->tls_session_lifetime == 0) {





  counter++;
  SSL_set_session_id_context(conn->ssl,
        (const unsigned char *) &counter,
        sizeof(counter));
 } else if (session_ctx) {
  SSL_set_session_id_context(conn->ssl, session_ctx,
        session_ctx_len);
 }

 return 0;
}
