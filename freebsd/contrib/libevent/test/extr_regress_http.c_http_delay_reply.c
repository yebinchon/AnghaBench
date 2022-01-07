
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
typedef int evutil_socket_t ;


 int HTTP_OK ;
 int evhttp_send_reply (struct evhttp_request*,int ,char*,int *) ;
 int test_ok ;

__attribute__((used)) static void
http_delay_reply(evutil_socket_t fd, short what, void *arg)
{
 struct evhttp_request *req = arg;

 evhttp_send_reply(req, HTTP_OK, "Everything is fine", ((void*)0));

 ++test_ok;
}
