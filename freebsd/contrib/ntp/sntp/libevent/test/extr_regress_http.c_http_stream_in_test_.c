
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct evbuffer {int dummy; } ;
struct basic_test_data {int base; } ;
typedef int ev_uint16_t ;


 int EVHTTP_REQ_GET ;
 int TT_DIE (char*) ;
 int evbuffer_free (struct evbuffer*) ;
 size_t evbuffer_get_length (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 scalar_t__ evbuffer_pullup (struct evbuffer*,int) ;
 int event_base_dispatch (int ) ;
 struct evhttp_connection* evhttp_connection_base_new (int ,int *,char*,int ) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 int evhttp_free (scalar_t__) ;
 int evhttp_make_request (struct evhttp_connection*,struct evhttp_request*,int ,char const*) ;
 struct evhttp_request* evhttp_request_new (int ,struct evbuffer*) ;
 int evhttp_request_set_chunked_cb (struct evhttp_request*,int ) ;
 int exit_base ;
 scalar_t__ http ;
 scalar_t__ http_setup (int *,int ,int ) ;
 int http_stream_in_chunk ;
 int http_stream_in_done ;
 scalar_t__ memcmp (scalar_t__,char const*,size_t) ;
 int test_ok ;
 int tt_abort_msg (char*) ;
 int tt_assert (struct evhttp_connection*) ;

__attribute__((used)) static void
http_stream_in_test_(struct basic_test_data *data, char const *url,
    size_t expected_len, char const *expected)
{
 struct evhttp_connection *evcon;
 struct evbuffer *reply = evbuffer_new();
 struct evhttp_request *req = ((void*)0);
 ev_uint16_t port = 0;

 exit_base = data->base;
 http = http_setup(&port, data->base, 0);

 evcon = evhttp_connection_base_new(data->base, ((void*)0),"127.0.0.1", port);
 tt_assert(evcon);

 req = evhttp_request_new(http_stream_in_done, reply);
 evhttp_request_set_chunked_cb(req, http_stream_in_chunk);


 if (evhttp_make_request(evcon, req, EVHTTP_REQ_GET, url) == -1) {
  tt_abort_msg("Couldn't make request");
 }

 event_base_dispatch(data->base);

 if (evbuffer_get_length(reply) != expected_len) {
  TT_DIE(("reply length %lu; expected %lu; FAILED (%s)\n",
    (unsigned long)evbuffer_get_length(reply),
    (unsigned long)expected_len,
    (char*)evbuffer_pullup(reply, -1)));
 }

 if (memcmp(evbuffer_pullup(reply, -1), expected, expected_len) != 0) {
  tt_abort_msg("Memory mismatch");
 }

 test_ok = 1;
 end:
 if (reply)
  evbuffer_free(reply);
 if (evcon)
  evhttp_connection_free(evcon);
 if (http)
  evhttp_free(http);
}
