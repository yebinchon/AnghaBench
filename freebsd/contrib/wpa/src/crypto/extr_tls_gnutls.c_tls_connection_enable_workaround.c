
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int session; } ;


 int gnutls_record_disable_padding (int ) ;

int tls_connection_enable_workaround(void *ssl_ctx,
         struct tls_connection *conn)
{
 gnutls_record_disable_padding(conn->session);
 return 0;
}
