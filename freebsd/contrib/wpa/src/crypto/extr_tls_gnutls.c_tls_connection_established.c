
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int established; } ;



int tls_connection_established(void *ssl_ctx, struct tls_connection *conn)
{
 return conn ? conn->established : 0;
}
