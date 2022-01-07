
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_1; int member_0; } ;
struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct evhttp {int connections; } ;
struct basic_test_data {int base; } ;
typedef int ev_uint16_t ;


 int EVHTTP_REQ_GET ;
 int * TAILQ_FIRST (int *) ;
 int close_detect_cb ;
 struct evhttp_connection* delayed_client ;
 int event_base_dispatch (int ) ;
 int evhttp_add_header (int ,char*,char*) ;
 struct evhttp_connection* evhttp_connection_base_new (int ,int *,char*,int ) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 int evhttp_connection_set_timeout_tv (struct evhttp_connection*,struct timeval const*) ;
 int evhttp_free (struct evhttp*) ;
 int evhttp_make_request (struct evhttp_connection*,struct evhttp_request*,int ,char*) ;
 int evhttp_request_get_output_headers (struct evhttp_request*) ;
 struct evhttp_request* evhttp_request_new (int ,struct evhttp_connection*) ;
 int evhttp_set_timeout_tv (struct evhttp*,struct timeval const*) ;
 struct evhttp* http_setup (int *,int ,int ) ;
 scalar_t__ test_ok ;
 int tt_abort_msg (char*) ;
 int tt_assert (struct evhttp_connection*) ;

__attribute__((used)) static void
http_close_detection_(struct basic_test_data *data, int with_delay)
{
 ev_uint16_t port = 0;
 struct evhttp_connection *evcon = ((void*)0);
 struct evhttp_request *req = ((void*)0);
 const struct timeval sec_tenth = { 0, 100000 };
 struct evhttp *http = http_setup(&port, data->base, 0);

 test_ok = 0;


 evhttp_set_timeout_tv(http, &sec_tenth);

 evcon = evhttp_connection_base_new(data->base, ((void*)0),
     "127.0.0.1", port);
 tt_assert(evcon);
 evhttp_connection_set_timeout_tv(evcon, &sec_tenth);


 tt_assert(evcon);
 delayed_client = evcon;






 req = evhttp_request_new(close_detect_cb, evcon);


 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");


 if (evhttp_make_request(evcon,
     req, EVHTTP_REQ_GET, with_delay ? "/largedelay" : "/test") == -1) {
  tt_abort_msg("couldn't make request");
 }

 event_base_dispatch(data->base);


 tt_assert(TAILQ_FIRST(&http->connections) == ((void*)0));

 end:
 if (evcon)
  evhttp_connection_free(evcon);
 if (http)
  evhttp_free(http);
}
