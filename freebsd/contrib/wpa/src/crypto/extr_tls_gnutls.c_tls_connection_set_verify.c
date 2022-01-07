
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {int verify_peer; int * session; } ;


 int GNUTLS_CERT_REQUEST ;
 int GNUTLS_CERT_REQUIRE ;
 int gnutls_certificate_server_set_request (int *,int ) ;

int tls_connection_set_verify(void *ssl_ctx, struct tls_connection *conn,
         int verify_peer, unsigned int flags,
         const u8 *session_ctx, size_t session_ctx_len)
{
 if (conn == ((void*)0) || conn->session == ((void*)0))
  return -1;

 conn->verify_peer = verify_peer;
 gnutls_certificate_server_set_request(conn->session,
           verify_peer ? GNUTLS_CERT_REQUIRE
           : GNUTLS_CERT_REQUEST);

 return 0;
}
