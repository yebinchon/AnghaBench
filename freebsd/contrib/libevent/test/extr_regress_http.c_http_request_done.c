
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;


 int EVUTIL_ASSERT (int ) ;
 scalar_t__ HTTP_OK ;
 scalar_t__ evbuffer_datacmp (int ,char const*) ;
 scalar_t__ evbuffer_get_length (int ) ;
 int event_base_loopexit (int ,int *) ;
 int * evhttp_find_header (int ,char*) ;
 int evhttp_request_get_input_buffer (struct evhttp_request*) ;
 int evhttp_request_get_input_headers (struct evhttp_request*) ;
 scalar_t__ evhttp_request_get_response_code (struct evhttp_request*) ;
 int exit (int) ;
 int exit_base ;
 int fprintf (int ,char*) ;
 int stderr ;
 scalar_t__ strlen (char const*) ;
 int test_ok ;

__attribute__((used)) static void
http_request_done(struct evhttp_request *req, void *arg)
{
 const char *what = arg;

 if (!req) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 if (evhttp_request_get_response_code(req) != HTTP_OK) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 if (evhttp_find_header(evhttp_request_get_input_headers(req), "Content-Type") == ((void*)0)) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 if (evbuffer_get_length(evhttp_request_get_input_buffer(req)) != strlen(what)) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 if (evbuffer_datacmp(evhttp_request_get_input_buffer(req), what) != 0) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 test_ok = 1;
 EVUTIL_ASSERT(exit_base);
 event_base_loopexit(exit_base, ((void*)0));
}
