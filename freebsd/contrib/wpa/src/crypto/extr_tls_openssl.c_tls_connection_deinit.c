
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {struct tls_connection* session_ticket; struct tls_connection* check_cert_subject; struct tls_connection* domain_match; struct tls_connection* suffix_match; struct tls_connection* altsubject_match; struct tls_connection* subject_match; int ssl; scalar_t__ success_data; } ;


 int SSL_free (int ) ;
 int SSL_set_quiet_shutdown (int ,int) ;
 int SSL_shutdown (int ) ;
 int os_free (struct tls_connection*) ;
 int tls_engine_deinit (struct tls_connection*) ;

void tls_connection_deinit(void *ssl_ctx, struct tls_connection *conn)
{
 if (conn == ((void*)0))
  return;
 if (conn->success_data) {




  SSL_set_quiet_shutdown(conn->ssl, 1);
  SSL_shutdown(conn->ssl);
 }
 SSL_free(conn->ssl);
 tls_engine_deinit(conn);
 os_free(conn->subject_match);
 os_free(conn->altsubject_match);
 os_free(conn->suffix_match);
 os_free(conn->domain_match);
 os_free(conn->check_cert_subject);
 os_free(conn->session_ticket);
 os_free(conn);
}
