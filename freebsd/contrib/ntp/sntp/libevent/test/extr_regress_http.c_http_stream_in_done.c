
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;


 scalar_t__ evbuffer_get_length (int ) ;
 int event_base_loopexit (int ,int *) ;
 int evhttp_request_get_input_buffer (struct evhttp_request*) ;
 int exit (int) ;
 int exit_base ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
http_stream_in_done(struct evhttp_request *req, void *arg)
{
 if (evbuffer_get_length(evhttp_request_get_input_buffer(req)) != 0) {
  fprintf(stderr, "FAILED\n");
  exit(1);
 }

 event_base_loopexit(exit_base, ((void*)0));
}
