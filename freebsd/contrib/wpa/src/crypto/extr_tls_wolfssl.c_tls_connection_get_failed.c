
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int failed; } ;



int tls_connection_get_failed(void *tls_ctx, struct tls_connection *conn)
{
 if (!conn)
  return -1;

 return conn->failed;
}
