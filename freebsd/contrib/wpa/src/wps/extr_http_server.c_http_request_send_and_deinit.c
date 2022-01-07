
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct http_request {int dummy; } ;


 int http_request_deinit (struct http_request*) ;
 int http_request_send (struct http_request*,struct wpabuf*) ;

void http_request_send_and_deinit(struct http_request *req,
      struct wpabuf *resp)
{
 http_request_send(req, resp);
 http_request_deinit(req);
}
