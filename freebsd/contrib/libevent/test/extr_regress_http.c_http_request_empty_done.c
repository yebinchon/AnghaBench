
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;


 int EVUTIL_ASSERT (void*) ;
 scalar_t__ HTTP_OK ;
 scalar_t__ evbuffer_get_length (int ) ;
 int event_base_loopexit (void*,int *) ;
 int * evhttp_find_header (int ,char*) ;
 int evhttp_request_get_input_buffer (struct evhttp_request*) ;
 int evhttp_request_get_input_headers (struct evhttp_request*) ;
 scalar_t__ evhttp_request_get_response_code (struct evhttp_request*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;
 scalar_t__ strcmp (int *,char*) ;
 int test_ok ;

__attribute__((used)) static void
http_request_empty_done(struct evhttp_request *req, void *arg)
{
 if (!req) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 if (evhttp_request_get_response_code(req) != HTTP_OK) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 if (evhttp_find_header(evhttp_request_get_input_headers(req), "Date") == ((void*)0)) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }


 if (evhttp_find_header(evhttp_request_get_input_headers(req), "Content-Length") == ((void*)0)) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 if (strcmp(evhttp_find_header(evhttp_request_get_input_headers(req), "Content-Length"),
  "0")) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 if (evbuffer_get_length(evhttp_request_get_input_buffer(req)) != 0) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 test_ok = 1;
 EVUTIL_ASSERT(arg);
 event_base_loopexit(arg, ((void*)0));
}
