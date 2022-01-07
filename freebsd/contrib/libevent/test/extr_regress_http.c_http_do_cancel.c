
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
typedef int evutil_socket_t ;


 int evhttp_cancel_request (struct evhttp_request*) ;
 int test_ok ;

__attribute__((used)) static void
http_do_cancel(evutil_socket_t fd, short what, void *arg)
{
 struct evhttp_request *req = arg;
 evhttp_cancel_request(req);
 ++test_ok;
}
