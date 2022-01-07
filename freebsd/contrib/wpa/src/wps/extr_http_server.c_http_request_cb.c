
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct httpread {int dummy; } ;
struct http_server {int cb_ctx; int (* cb ) (int ,struct http_request*) ;} ;
struct TYPE_2__ {int sin_port; int sin_addr; } ;
struct http_request {TYPE_1__ cli; struct http_server* srv; } ;
typedef enum httpread_event { ____Placeholder_httpread_event } httpread_event ;


 int HTTPREAD_EVENT_FILE_READY ;
 int MSG_DEBUG ;
 int http_request_deinit (struct http_request*) ;
 int inet_ntoa (int ) ;
 int ntohs (int ) ;
 int stub1 (int ,struct http_request*) ;
 int wpa_printf (int ,char*,int ,int ) ;

__attribute__((used)) static void http_request_cb(struct httpread *handle, void *cookie,
       enum httpread_event en)
{
 struct http_request *req = cookie;
 struct http_server *srv = req->srv;

 if (en == HTTPREAD_EVENT_FILE_READY) {
  wpa_printf(MSG_DEBUG, "HTTP: Request from %s:%d received",
      inet_ntoa(req->cli.sin_addr),
      ntohs(req->cli.sin_port));
  srv->cb(srv->cb_ctx, req);
  return;
 }
 wpa_printf(MSG_DEBUG, "HTTP: Request from %s:%d could not be received "
     "completely", inet_ntoa(req->cli.sin_addr),
     ntohs(req->cli.sin_port));
 http_request_deinit(req);
}
