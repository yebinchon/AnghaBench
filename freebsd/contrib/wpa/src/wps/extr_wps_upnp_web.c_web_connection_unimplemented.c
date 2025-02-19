
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct http_request {int dummy; } ;


 int HTTP_UNIMPLEMENTED ;
 int http_put_empty (struct wpabuf*,int ) ;
 int http_request_deinit (struct http_request*) ;
 int http_request_send_and_deinit (struct http_request*,struct wpabuf*) ;
 struct wpabuf* wpabuf_alloc (int) ;

__attribute__((used)) static void web_connection_unimplemented(struct http_request *req)
{
 struct wpabuf *buf;
 buf = wpabuf_alloc(200);
 if (buf == ((void*)0)) {
  http_request_deinit(req);
  return;
 }
 http_put_empty(buf, HTTP_UNIMPLEMENTED);
 http_request_send_and_deinit(req, buf);
}
