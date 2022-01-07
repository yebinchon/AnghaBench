
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; } ;
struct evhttp_request {int dummy; } ;


 scalar_t__ HTTP_OK ;
 int event_base_loopexit (void*,struct timeval*) ;
 scalar_t__ evhttp_request_get_response_code (struct evhttp_request*) ;
 int evutil_timerclear (struct timeval*) ;
 int test_ok ;
 int tt_assert (int) ;

__attribute__((used)) static void
close_detect_done(struct evhttp_request *req, void *arg)
{
 struct timeval tv;
 tt_assert(req);
 tt_assert(evhttp_request_get_response_code(req) == HTTP_OK);

 test_ok = 1;

 end:
 evutil_timerclear(&tv);
 tv.tv_usec = 150000;
 event_base_loopexit(arg, &tv);
}
