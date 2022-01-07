
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;


 int EVUTIL_ASSERT (void*) ;
 scalar_t__ HTTP_OK ;
 int event_base_loopexit (void*,int *) ;
 scalar_t__ evhttp_request_get_response_code (struct evhttp_request*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int test_ok ;

__attribute__((used)) static void
http_request_expect_error(struct evhttp_request *req, void *arg)
{
 if (evhttp_request_get_response_code(req) == HTTP_OK) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 test_ok = 1;
 EVUTIL_ASSERT(arg);
 event_base_loopexit(arg, ((void*)0));
}
