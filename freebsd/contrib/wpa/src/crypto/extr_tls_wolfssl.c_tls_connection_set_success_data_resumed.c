
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;

void tls_connection_set_success_data_resumed(struct tls_connection *conn)
{
 wpa_printf(MSG_DEBUG,
     "wolfSSL: Success data accepted for resumed session");
}
