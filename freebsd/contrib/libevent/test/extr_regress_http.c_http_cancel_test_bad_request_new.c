
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct event_base {int dummy; } ;
typedef enum http_cancel_test_type { ____Placeholder_http_cancel_test_type } http_cancel_test_type ;


 int INACTIVE_SERVER ;
 int NO_NS ;
 int SERVER_TIMEOUT ;
 struct evhttp_request* evhttp_request_new (int ,struct event_base*) ;
 int http_failed_request_done ;
 int http_timed_out_request_done ;

__attribute__((used)) static struct evhttp_request *
http_cancel_test_bad_request_new(enum http_cancel_test_type type,
 struct event_base *base)
{

 if (!(type & NO_NS) && (type & SERVER_TIMEOUT))
  return evhttp_request_new(http_timed_out_request_done, base);
 else

 if ((type & INACTIVE_SERVER) || (type & NO_NS))
  return evhttp_request_new(http_failed_request_done, base);
 else
  return ((void*)0);
}
