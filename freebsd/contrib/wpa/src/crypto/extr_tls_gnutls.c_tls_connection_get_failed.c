
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int failed; } ;



int tls_connection_get_failed(void *ssl_ctx, struct tls_connection *conn)
{
 if (conn == ((void*)0))
  return -1;
 return conn->failed;
}
