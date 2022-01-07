
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct httpread {int dummy; } ;
struct TYPE_2__ {int sin_port; int sin_addr; } ;
struct http_client {int cb_ctx; int (* cb ) (int ,struct http_client*,int ) ;TYPE_1__ dst; int hread; } ;
typedef enum httpread_event { ____Placeholder_httpread_event } httpread_event ;





 int HTTPREAD_HDR_TYPE_REPLY ;
 int HTTP_CLIENT_FAILED ;
 int HTTP_CLIENT_INVALID_REPLY ;
 int HTTP_CLIENT_OK ;
 int HTTP_CLIENT_TIMEOUT ;
 int MSG_DEBUG ;
 int eloop_cancel_timeout (int ,struct http_client*,int *) ;
 int http_client_timeout ;
 int httpread_hdr_type_get (int ) ;
 int httpread_reply_code_get (int ) ;
 int inet_ntoa (int ) ;
 int ntohs (int ) ;
 int stub1 (int ,struct http_client*,int ) ;
 int stub2 (int ,struct http_client*,int ) ;
 int stub3 (int ,struct http_client*,int ) ;
 int stub4 (int ,struct http_client*,int ) ;
 int stub5 (int ,struct http_client*,int ) ;
 int wpa_printf (int ,char*,int,void*,...) ;

__attribute__((used)) static void http_client_got_response(struct httpread *handle, void *cookie,
         enum httpread_event e)
{
 struct http_client *c = cookie;

 wpa_printf(MSG_DEBUG, "HTTP: httpread callback: handle=%p cookie=%p "
     "e=%d", handle, cookie, e);

 eloop_cancel_timeout(http_client_timeout, c, ((void*)0));
 switch (e) {
 case 129:
  if (httpread_hdr_type_get(c->hread) == HTTPREAD_HDR_TYPE_REPLY)
  {
   int reply_code = httpread_reply_code_get(c->hread);
   if (reply_code == 200 ) {
    wpa_printf(MSG_DEBUG, "HTTP: Response OK from "
        "%s:%d",
        inet_ntoa(c->dst.sin_addr),
        ntohs(c->dst.sin_port));
    c->cb(c->cb_ctx, c, HTTP_CLIENT_OK);
   } else {
    wpa_printf(MSG_DEBUG, "HTTP: Error %d from "
        "%s:%d", reply_code,
        inet_ntoa(c->dst.sin_addr),
        ntohs(c->dst.sin_port));
    c->cb(c->cb_ctx, c, HTTP_CLIENT_INVALID_REPLY);
   }
  } else
   c->cb(c->cb_ctx, c, HTTP_CLIENT_INVALID_REPLY);
  break;
 case 128:
  c->cb(c->cb_ctx, c, HTTP_CLIENT_TIMEOUT);
  break;
 case 130:
  c->cb(c->cb_ctx, c, HTTP_CLIENT_FAILED);
  break;
 }
}
