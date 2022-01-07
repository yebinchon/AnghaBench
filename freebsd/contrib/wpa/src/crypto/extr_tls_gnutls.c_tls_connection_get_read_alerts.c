
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int read_alerts; } ;



int tls_connection_get_read_alerts(void *ssl_ctx, struct tls_connection *conn)
{
 if (conn == ((void*)0))
  return -1;
 return conn->read_alerts;
}
