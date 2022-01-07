
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int write_alerts; } ;



int tls_connection_get_write_alerts(void *tls_ctx,
        struct tls_connection *conn)
{
 if (!conn)
  return -1;


 return conn->write_alerts;
}
