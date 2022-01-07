
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {struct tls_connection* domain_match; struct tls_connection* suffix_match; int pull_buf; int push_buf; struct tls_connection* pre_shared_secret; int session; int xcred; } ;


 int gnutls_certificate_free_credentials (int ) ;
 int gnutls_deinit (int ) ;
 int os_free (struct tls_connection*) ;
 int wpabuf_free (int ) ;

void tls_connection_deinit(void *ssl_ctx, struct tls_connection *conn)
{
 if (conn == ((void*)0))
  return;

 gnutls_certificate_free_credentials(conn->xcred);
 gnutls_deinit(conn->session);
 os_free(conn->pre_shared_secret);
 wpabuf_free(conn->push_buf);
 wpabuf_free(conn->pull_buf);
 os_free(conn->suffix_match);
 os_free(conn->domain_match);
 os_free(conn);
}
