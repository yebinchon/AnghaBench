
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tls_session_ticket_cb ;
struct tls_connection {int ssl; void* session_ticket_cb_ctx; scalar_t__ session_ticket_cb; } ;


 int * tls_sess_sec_cb ;
 int wolfSSL_set_session_secret_cb (int ,int *,struct tls_connection*) ;

int tls_connection_set_session_ticket_cb(void *tls_ctx,
      struct tls_connection *conn,
      tls_session_ticket_cb cb,
      void *ctx)
{
 return -1;

}
