
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evbuffer {int dummy; } ;


 int HTTP_OK ;
 int content ;
 int content_len ;
 int evbuffer_add (struct evbuffer*,int ,int ) ;
 int evbuffer_free (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int evhttp_send_reply (struct evhttp_request*,int ,char*,struct evbuffer*) ;

__attribute__((used)) static void
http_basic_cb(struct evhttp_request *req, void *arg)
{
 struct evbuffer *evb = evbuffer_new();

 evbuffer_add(evb, content, content_len);


 evhttp_send_reply(req, HTTP_OK, "Everything is fine", evb);

 evbuffer_free(evb);
}
