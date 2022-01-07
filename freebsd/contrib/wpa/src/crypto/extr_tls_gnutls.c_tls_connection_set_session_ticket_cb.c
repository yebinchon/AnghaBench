
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tls_session_ticket_cb ;
struct tls_connection {int dummy; } ;



int tls_connection_set_session_ticket_cb(void *tls_ctx,
      struct tls_connection *conn,
      tls_session_ticket_cb cb, void *ctx)
{
 return -1;
}
