
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evbuffer {int dummy; } ;


 int evhttp_response_code_ (struct evhttp_request*,int,char const*) ;
 int evhttp_send (struct evhttp_request*,struct evbuffer*) ;

void
evhttp_send_reply(struct evhttp_request *req, int code, const char *reason,
    struct evbuffer *databuf)
{
 evhttp_response_code_(req, code, reason);

 evhttp_send(req, databuf);
}
