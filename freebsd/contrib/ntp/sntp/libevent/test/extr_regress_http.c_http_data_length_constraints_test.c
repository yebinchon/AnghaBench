
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
typedef struct evhttp_request evhttp_connection ;
struct basic_test_data {int base; } ;
typedef int ev_uint16_t ;


 int EVHTTP_REQ_GET ;
 int EVHTTP_REQ_POST ;
 int evbuffer_add_printf (int ,char*,char*) ;
 int event_base_dispatch (int ) ;
 int evhttp_add_header (int ,char*,char*) ;
 struct evhttp_request* evhttp_connection_base_new (int ,int *,char*,int ) ;
 int evhttp_connection_free (struct evhttp_request*) ;
 int evhttp_connection_set_local_address (struct evhttp_request*,char*) ;
 int evhttp_free (scalar_t__) ;
 int evhttp_make_request (struct evhttp_request*,struct evhttp_request*,int ,char*) ;
 int evhttp_request_get_output_buffer (struct evhttp_request*) ;
 int evhttp_request_get_output_headers (struct evhttp_request*) ;
 struct evhttp_request* evhttp_request_new (int ,int ) ;
 int evhttp_set_max_body_size (scalar_t__,int) ;
 int evhttp_set_max_headers_size (scalar_t__,int) ;
 scalar_t__ http ;
 int http_data_length_constraints_test_done ;
 int http_large_entity_test_done ;
 scalar_t__ http_setup (int *,int ,int ) ;
 int memset (char*,char,int) ;
 int test_ok ;
 int tt_abort_msg (char*) ;
 int tt_assert (struct evhttp_request*) ;

__attribute__((used)) static void
http_data_length_constraints_test(void *arg)
{
 struct basic_test_data *data = arg;
 ev_uint16_t port = 0;
 struct evhttp_connection *evcon = ((void*)0);
 struct evhttp_request *req = ((void*)0);
 char long_str[8192];

 test_ok = 0;

 http = http_setup(&port, data->base, 0);

 evcon = evhttp_connection_base_new(data->base, ((void*)0), "127.0.0.1", port);
 tt_assert(evcon);


 evhttp_connection_set_local_address(evcon, "127.0.0.1");






 req = evhttp_request_new(http_data_length_constraints_test_done, data->base);
 tt_assert(req);

 memset(long_str, 'a', 8192);
 long_str[8191] = '\0';

 evhttp_set_max_headers_size(http, 8191);
 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");
 evhttp_add_header(evhttp_request_get_output_headers(req), "Longheader", long_str);

 if (evhttp_make_request(evcon, req, EVHTTP_REQ_GET, "/?arg=val") == -1) {
  tt_abort_msg("Couldn't make request");
 }
 event_base_dispatch(data->base);

 req = evhttp_request_new(http_data_length_constraints_test_done, data->base);
 tt_assert(req);
 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");


 if (evhttp_make_request(evcon, req, EVHTTP_REQ_GET, long_str) == -1) {
  tt_abort_msg("Couldn't make request");
 }
 event_base_dispatch(data->base);

 evhttp_set_max_body_size(http, 8190);
 req = evhttp_request_new(http_data_length_constraints_test_done, data->base);
 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");
 evbuffer_add_printf(evhttp_request_get_output_buffer(req), "%s", long_str);
 if (evhttp_make_request(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
  tt_abort_msg("Couldn't make request");
 }
 event_base_dispatch(data->base);

 req = evhttp_request_new(http_large_entity_test_done, data->base);
 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");
 evhttp_add_header(evhttp_request_get_output_headers(req), "Expect", "100-continue");
 evbuffer_add_printf(evhttp_request_get_output_buffer(req), "%s", long_str);
 if (evhttp_make_request(evcon, req, EVHTTP_REQ_POST, "/") == -1) {
  tt_abort_msg("Couldn't make request");
 }
 event_base_dispatch(data->base);

 test_ok = 1;
 end:
 if (evcon)
  evhttp_connection_free(evcon);
 if (http)
  evhttp_free(http);
}
