
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct evhttp {int dummy; } ;
struct evdns_base {int dummy; } ;
struct bufferevent {int dummy; } ;
struct basic_test_data {void* base; } ;
typedef int ev_uint16_t ;
typedef int SSL ;


 scalar_t__ BASIC_REQUEST_BODY ;
 int BEV_OPT_DEFER_CALLBACKS ;
 int BUFFEREVENT_SSL_CONNECTING ;
 int EVHTTP_REQ_GET ;
 int HTTP_BIND_IPV6 ;
 int HTTP_BIND_SSL ;
 int * SSL_new (int ) ;
 int bufferevent_openssl_set_allow_dirty_shutdown (struct bufferevent*,int) ;
 struct bufferevent* bufferevent_openssl_socket_new (void*,int,int *,int ,int ) ;
 int event_base_dispatch (void*) ;
 int evhttp_add_header (int ,char*,char*) ;
 struct evhttp_connection* evhttp_connection_base_bufferevent_new (void*,struct evdns_base*,struct bufferevent*,char const*,int ) ;
 struct evhttp_connection* evhttp_connection_base_new (void*,struct evdns_base*,char const*,int ) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 void* evhttp_connection_get_base (struct evhttp_connection*) ;
 int * evhttp_connection_get_server (struct evhttp_connection*) ;
 int evhttp_connection_set_family (struct evhttp_connection*,int) ;
 int evhttp_free (struct evhttp*) ;
 int evhttp_make_request (struct evhttp_connection*,struct evhttp_request*,int ,char*) ;
 int evhttp_request_get_output_headers (struct evhttp_request*) ;
 struct evhttp_request* evhttp_request_new (int ,void*) ;
 int exit (int) ;
 void* exit_base ;
 int fprintf (int ,char*) ;
 int get_ssl_ctx () ;
 int http_request_done ;
 int http_request_empty_done ;
 struct evhttp* http_setup (int *,void*,int) ;
 int stdout ;
 int test_ok ;
 int tt_abort_msg (char*) ;
 int tt_assert (int) ;
 int tt_skip () ;

__attribute__((used)) static void
http_connection_test_(struct basic_test_data *data, int persistent,
 const char *address, struct evdns_base *dnsbase, int ipv6, int family,
 int ssl)
{
 ev_uint16_t port = 0;
 struct evhttp_connection *evcon = ((void*)0);
 struct evhttp_request *req = ((void*)0);
 struct evhttp *http;

 int mask = 0;
 if (ipv6)
  mask |= HTTP_BIND_IPV6;
 if (ssl)
  mask |= HTTP_BIND_SSL;

 http = http_setup(&port, data->base, mask);

 test_ok = 0;
 if (!http && ipv6) {
  tt_skip();
 }
 tt_assert(http);

 if (ssl) {
  tt_skip();

 } else {
  evcon = evhttp_connection_base_new(data->base, dnsbase, address, port);
 }
 tt_assert(evcon);
 evhttp_connection_set_family(evcon, family);

 tt_assert(evhttp_connection_get_base(evcon) == data->base);

 exit_base = data->base;

 tt_assert(evhttp_connection_get_server(evcon) == ((void*)0));





 req = evhttp_request_new(http_request_done, (void*) BASIC_REQUEST_BODY);


 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");


 if (evhttp_make_request(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
  fprintf(stdout, "FAILED\n");
  exit(1);
 }

 event_base_dispatch(data->base);

 tt_assert(test_ok);


 test_ok = 0;

 req = evhttp_request_new(http_request_done, (void*) BASIC_REQUEST_BODY);


 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");





 if (!persistent)
  evhttp_add_header(evhttp_request_get_output_headers(req), "Connection", "close");


 if (evhttp_make_request(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
  tt_abort_msg("couldn't make request");
 }

 event_base_dispatch(data->base);


 test_ok = 0;

 req = evhttp_request_new(http_request_empty_done, data->base);


 evhttp_add_header(evhttp_request_get_output_headers(req), "Empty", "itis");


 if (evhttp_make_request(evcon, req, EVHTTP_REQ_GET, "/test") == -1) {
  tt_abort_msg("Couldn't make request");
 }

 event_base_dispatch(data->base);

 end:
 if (evcon)
  evhttp_connection_free(evcon);
 if (http)
  evhttp_free(http);
}
