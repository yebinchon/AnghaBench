
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct basic_test_data {int base; } ;
typedef int ev_uint16_t ;


 int EVHTTP_REQ_GET ;
 int event_base_dispatch (int ) ;
 struct evhttp_connection* evhttp_connection_base_new (int ,int *,char*,int ) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 int evhttp_free (int ) ;
 int evhttp_make_request (struct evhttp_connection*,struct evhttp_request*,int ,char*) ;
 struct evhttp_request* evhttp_request_new (int ,int ) ;
 int evhttp_request_set_chunked_cb (struct evhttp_request*,int ) ;
 int http ;
 int http_setup (int *,int ,int ) ;
 int http_stream_in_cancel_chunk ;
 int http_stream_in_cancel_done ;
 int test_ok ;
 int tt_abort_msg (char*) ;
 int tt_assert (struct evhttp_connection*) ;

__attribute__((used)) static void
http_stream_in_cancel_test(void *arg)
{
 struct basic_test_data *data = arg;
 struct evhttp_connection *evcon;
 struct evhttp_request *req = ((void*)0);
 ev_uint16_t port = 0;

 http = http_setup(&port, data->base, 0);

 evcon = evhttp_connection_base_new(data->base, ((void*)0), "127.0.0.1", port);
 tt_assert(evcon);

 req = evhttp_request_new(http_stream_in_cancel_done, data->base);
 evhttp_request_set_chunked_cb(req, http_stream_in_cancel_chunk);


 if (evhttp_make_request(evcon, req, EVHTTP_REQ_GET, "/chunked") == -1) {
  tt_abort_msg("Couldn't make request");
 }

 event_base_dispatch(data->base);

 test_ok = 1;
 end:
 evhttp_connection_free(evcon);
 evhttp_free(http);

}
