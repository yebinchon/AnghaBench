
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {scalar_t__ server; } ;


 int tlsv1_server_get_write_alerts (scalar_t__) ;

int tls_connection_get_write_alerts(void *tls_ctx,
        struct tls_connection *conn)
{




 return 0;
}
