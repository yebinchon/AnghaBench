
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evbuffer {int dummy; } ;


 int HTTP_OK ;
 int evbuffer_add_printf (struct evbuffer*,char*,char*) ;
 int evbuffer_free (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int evhttp_add_header (int ,char*,char*) ;
 int evhttp_request_get_output_headers (struct evhttp_request*) ;
 int evhttp_send_reply (struct evhttp_request*,int ,char*,struct evbuffer*) ;

__attribute__((used)) static void
http_badreq_cb(struct evhttp_request *req, void *arg)
{
 struct evbuffer *buf = evbuffer_new();

 evhttp_add_header(evhttp_request_get_output_headers(req), "Content-Type", "text/xml; charset=UTF-8");
 evbuffer_add_printf(buf, "Hello, %s!", "127.0.0.1");

 evhttp_send_reply(req, HTTP_OK, "OK", buf);
 evbuffer_free(buf);
}
