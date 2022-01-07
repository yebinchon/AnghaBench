
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct evhttp_request {int dummy; } ;
struct event_base {int dummy; } ;
typedef int evutil_socket_t ;


 int event_base_loopexit (struct event_base*,struct timeval*) ;
 int evhttp_cancel_request (struct evhttp_request*) ;
 struct event_base* evhttp_connection_get_base (int ) ;
 int evhttp_request_get_connection (struct evhttp_request*) ;
 int evutil_timerclear (struct timeval*) ;
 int test_ok ;

__attribute__((used)) static void
http_do_cancel(evutil_socket_t fd, short what, void *arg)
{
 struct evhttp_request *req = arg;
 struct timeval tv;
 struct event_base *base;
 evutil_timerclear(&tv);
 tv.tv_sec = 0;
 tv.tv_usec = 500 * 1000;

 base = evhttp_connection_get_base(evhttp_request_get_connection(req));
 evhttp_cancel_request(req);

 event_base_loopexit(base, &tv);

 ++test_ok;
}
