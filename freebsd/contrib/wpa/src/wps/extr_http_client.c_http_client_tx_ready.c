
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sin_port; int sin_addr; } ;
struct http_client {size_t req_pos; int cb_ctx; int (* cb ) (int ,struct http_client*,int ) ;int * hread; int max_response; int sd; int * req; TYPE_1__ dst; } ;


 int EVENT_TYPE_WRITE ;
 int HTTP_CLIENT_FAILED ;
 int HTTP_CLIENT_TIMEOUT_SEC ;
 int MSG_DEBUG ;
 int eloop_unregister_sock (int ,int ) ;
 int errno ;
 int http_client_got_response ;
 int * httpread_create (int ,int ,struct http_client*,int ,int ) ;
 int inet_ntoa (int ) ;
 int ntohs (int ) ;
 int send (int ,size_t,size_t,int ) ;
 int strerror (int ) ;
 int stub1 (int ,struct http_client*,int ) ;
 int stub2 (int ,struct http_client*,int ) ;
 int wpa_printf (int ,char*,int,...) ;
 int wpabuf_free (int *) ;
 size_t wpabuf_head_u8 (int *) ;
 size_t wpabuf_len (int *) ;

__attribute__((used)) static void http_client_tx_ready(int sock, void *eloop_ctx, void *sock_ctx)
{
 struct http_client *c = eloop_ctx;
 int res;
 size_t send_len;

 send_len = wpabuf_len(c->req) - c->req_pos;
 wpa_printf(MSG_DEBUG, "HTTP: Send client request to %s:%d (%lu of %lu "
     "bytes remaining)",
     inet_ntoa(c->dst.sin_addr), ntohs(c->dst.sin_port),
     (unsigned long) wpabuf_len(c->req),
     (unsigned long) send_len);

 res = send(c->sd, wpabuf_head_u8(c->req) + c->req_pos, send_len, 0);
 if (res < 0) {
  wpa_printf(MSG_DEBUG, "HTTP: Failed to send buffer: %s",
      strerror(errno));
  eloop_unregister_sock(c->sd, EVENT_TYPE_WRITE);
  c->cb(c->cb_ctx, c, HTTP_CLIENT_FAILED);
  return;
 }

 if ((size_t) res < send_len) {
  wpa_printf(MSG_DEBUG, "HTTP: Sent %d of %lu bytes; %lu bytes "
      "remaining",
      res, (unsigned long) wpabuf_len(c->req),
      (unsigned long) send_len - res);
  c->req_pos += res;
  return;
 }

 wpa_printf(MSG_DEBUG, "HTTP: Full client request sent to %s:%d",
     inet_ntoa(c->dst.sin_addr), ntohs(c->dst.sin_port));
 eloop_unregister_sock(c->sd, EVENT_TYPE_WRITE);
 wpabuf_free(c->req);
 c->req = ((void*)0);

 c->hread = httpread_create(c->sd, http_client_got_response, c,
       c->max_response, HTTP_CLIENT_TIMEOUT_SEC);
 if (c->hread == ((void*)0)) {
  c->cb(c->cb_ctx, c, HTTP_CLIENT_FAILED);
  return;
 }
}
