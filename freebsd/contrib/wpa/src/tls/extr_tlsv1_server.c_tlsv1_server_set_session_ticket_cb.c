
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tlsv1_server_session_ticket_cb ;
struct tlsv1_server {void* session_ticket_cb_ctx; int session_ticket_cb; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int ,void*) ;

void tlsv1_server_set_session_ticket_cb(struct tlsv1_server *conn,
     tlsv1_server_session_ticket_cb cb,
     void *ctx)
{
 wpa_printf(MSG_DEBUG, "TLSv1: SessionTicket callback set %p (ctx %p)",
     cb, ctx);
 conn->session_ticket_cb = cb;
 conn->session_ticket_cb_ctx = ctx;
}
