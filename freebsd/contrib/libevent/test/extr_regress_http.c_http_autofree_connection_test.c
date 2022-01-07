
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct evhttp {int connections; } ;
struct basic_test_data {int base; } ;
typedef int ev_uint16_t ;


 int EVHTTP_REQ_GET ;
 int * TAILQ_FIRST (int *) ;
 int event_base_dispatch (int ) ;
 int evhttp_add_header (int ,char*,char*) ;
 struct evhttp_connection* evhttp_connection_base_new (int ,int *,char*,int ) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 int evhttp_connection_free_on_completion (struct evhttp_connection*) ;
 int evhttp_free (struct evhttp*) ;
 int evhttp_make_request (struct evhttp_connection*,struct evhttp_request*,int ,char*) ;
 int evhttp_request_get_output_headers (struct evhttp_request*) ;
 struct evhttp_request* evhttp_request_new (int ,int ) ;
 int http_request_empty_done ;
 struct evhttp* http_setup (int *,int ,int ) ;
 scalar_t__ test_ok ;
 int tt_abort_msg (char*) ;
 int tt_assert (struct evhttp_connection*) ;

__attribute__((used)) static void
http_autofree_connection_test(void *arg)
{
 struct basic_test_data *data = arg;
 ev_uint16_t port = 0;
 struct evhttp_connection *evcon = ((void*)0);
 struct evhttp_request *req[2] = { ((void*)0) };
 struct evhttp *http = http_setup(&port, data->base, 0);

 test_ok = 0;

 evcon = evhttp_connection_base_new(data->base, ((void*)0), "127.0.0.1", port);
 tt_assert(evcon);





 req[0] = evhttp_request_new(http_request_empty_done, data->base);
 req[1] = evhttp_request_new(http_request_empty_done, data->base);


 evhttp_add_header(evhttp_request_get_output_headers(req[0]), "Host", "somehost");
 evhttp_add_header(evhttp_request_get_output_headers(req[0]), "Connection", "close");
 evhttp_add_header(evhttp_request_get_output_headers(req[0]), "Empty", "itis");
 evhttp_add_header(evhttp_request_get_output_headers(req[1]), "Host", "somehost");
 evhttp_add_header(evhttp_request_get_output_headers(req[1]), "Connection", "close");
 evhttp_add_header(evhttp_request_get_output_headers(req[1]), "Empty", "itis");


 if (evhttp_make_request(evcon, req[0], EVHTTP_REQ_GET, "/test") == -1) {
  tt_abort_msg("couldn't make request");
 }
 if (evhttp_make_request(evcon, req[1], EVHTTP_REQ_GET, "/test") == -1) {
  tt_abort_msg("couldn't make request");
 }






 evhttp_connection_free_on_completion(evcon);
 evcon = ((void*)0);

 event_base_dispatch(data->base);


 tt_assert(TAILQ_FIRST(&http->connections) == ((void*)0));

 end:
 if (evcon)
  evhttp_connection_free(evcon);
 if (http)
  evhttp_free(http);
}
