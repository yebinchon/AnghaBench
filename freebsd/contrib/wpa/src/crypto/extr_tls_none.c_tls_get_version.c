
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int dummy; } ;



int tls_get_version(void *ssl_ctx, struct tls_connection *conn,
      char *buf, size_t buflen)
{
 return -1;
}
