
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evbuffer {int dummy; } ;


 scalar_t__ HTTP_OK ;
 int evbuffer_add_buffer (struct evbuffer*,int ) ;
 int evhttp_request_get_input_buffer (struct evhttp_request*) ;
 scalar_t__ evhttp_request_get_response_code (struct evhttp_request*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
http_stream_in_chunk(struct evhttp_request *req, void *arg)
{
 struct evbuffer *reply = arg;

 if (evhttp_request_get_response_code(req) != HTTP_OK) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 evbuffer_add_buffer(reply, evhttp_request_get_input_buffer(req));
}
