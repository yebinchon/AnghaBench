
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
typedef enum evhttp_request_error { ____Placeholder_evhttp_request_error } evhttp_request_error ;


 int EVREQ_HTTP_REQUEST_CANCEL ;
 int event_base_loopexit (int ,struct timeval*) ;
 int evutil_timerclear (struct timeval*) ;
 int exit (int) ;
 int exit_base ;
 int fprintf (int ,char*) ;
 int stderr ;
 int test_ok ;

__attribute__((used)) static void
http_request_error_cb_with_cancel(enum evhttp_request_error error, void *arg)
{
 if (error != EVREQ_HTTP_REQUEST_CANCEL) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }
 test_ok = 1;

 {
  struct timeval tv;
  evutil_timerclear(&tv);
  tv.tv_sec = 0;
  tv.tv_usec = 500 * 1000;
  event_base_loopexit(exit_base, &tv);
 }
}
