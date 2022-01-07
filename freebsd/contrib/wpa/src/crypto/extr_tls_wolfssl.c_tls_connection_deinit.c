
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {struct tls_connection* domain_match; struct tls_connection* suffix_match; struct tls_connection* alt_subject_match; struct tls_connection* subject_match; int ssl; } ;


 int MSG_DEBUG ;
 int os_free (struct tls_connection*) ;
 int wolfSSL_free (int ) ;
 int wpa_printf (int ,char*) ;

void tls_connection_deinit(void *tls_ctx, struct tls_connection *conn)
{
 if (!conn)
  return;

 wpa_printf(MSG_DEBUG, "SSL: connection deinit");


 wolfSSL_free(conn->ssl);
 os_free(conn->subject_match);
 os_free(conn->alt_subject_match);
 os_free(conn->suffix_match);
 os_free(conn->domain_match);


 os_free(conn);
}
