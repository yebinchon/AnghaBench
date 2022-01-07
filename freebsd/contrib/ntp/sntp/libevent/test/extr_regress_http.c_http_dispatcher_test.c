
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
typedef struct evhttp_request evhttp_connection ;
struct basic_test_data {int base; } ;
typedef int ev_uint16_t ;


 int EVHTTP_REQ_GET ;
 int event_base_dispatch (int ) ;
 int evhttp_add_header (int ,char*,char*) ;
 struct evhttp_request* evhttp_connection_base_new (int ,int *,char*,int ) ;
 int evhttp_connection_free (struct evhttp_request*) ;
 int evhttp_connection_set_local_address (struct evhttp_request*,char*) ;
 int evhttp_free (scalar_t__) ;
 int evhttp_make_request (struct evhttp_request*,struct evhttp_request*,int ,char*) ;
 int evhttp_request_get_output_headers (struct evhttp_request*) ;
 struct evhttp_request* evhttp_request_new (int ,int ) ;
 scalar_t__ http ;
 int http_dispatcher_test_done ;
 scalar_t__ http_setup (int *,int ,int ) ;
 scalar_t__ test_ok ;
 int tt_abort_msg (char*) ;
 int tt_assert (struct evhttp_request*) ;

__attribute__((used)) static void
http_dispatcher_test(void *arg)
{
 struct basic_test_data *data = arg;
 ev_uint16_t port = 0;
 struct evhttp_connection *evcon = ((void*)0);
 struct evhttp_request *req = ((void*)0);

 test_ok = 0;

 http = http_setup(&port, data->base, 0);

 evcon = evhttp_connection_base_new(data->base, ((void*)0), "127.0.0.1", port);
 tt_assert(evcon);


 evhttp_connection_set_local_address(evcon, "127.0.0.1");






 req = evhttp_request_new(http_dispatcher_test_done, data->base);
 tt_assert(req);


 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");

 if (evhttp_make_request(evcon, req, EVHTTP_REQ_GET, "/?arg=val") == -1) {
  tt_abort_msg("Couldn't make request");
 }

 event_base_dispatch(data->base);

 end:
 if (evcon)
  evhttp_connection_free(evcon);
 if (http)
  evhttp_free(http);
}
