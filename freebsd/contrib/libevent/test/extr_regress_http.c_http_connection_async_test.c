
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evhttp_connection {int dummy; } ;
struct evhttp {int dummy; } ;
typedef struct evhttp_connection evdns_base ;
struct basic_test_data {void* base; } ;
typedef int ev_uint16_t ;
typedef int address ;


 scalar_t__ BASIC_REQUEST_BODY ;
 int EVHTTP_REQ_GET ;
 int evdns_base_free (struct evhttp_connection*,int ) ;
 int evdns_base_nameserver_ip_add (struct evhttp_connection*,char*) ;
 struct evhttp_connection* evdns_base_new (void*,int ) ;
 int event_base_dispatch (void*) ;
 int evhttp_add_header (int ,char*,char*) ;
 struct evhttp_connection* evhttp_connection_base_new (void*,struct evhttp_connection*,char*,int ) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 int evhttp_free (struct evhttp*) ;
 int evhttp_make_request (struct evhttp_connection*,struct evhttp_request*,int ,char*) ;
 int evhttp_request_get_output_headers (struct evhttp_request*) ;
 struct evhttp_request* evhttp_request_new (int ,void*) ;
 int evutil_snprintf (char*,int,char*,int ) ;
 int exit (int) ;
 void* exit_base ;
 int fprintf (int ,char*) ;
 int http_request_done ;
 int http_request_empty_done ;
 struct evhttp* http_setup (int *,void*,int ) ;
 int regress_clean_dnsserver () ;
 struct evhttp_connection* regress_dnsserver (void*,int *,int ) ;
 int search_table ;
 int stdout ;
 struct evhttp_connection* test_ok ;
 int tt_abort_msg (char*) ;
 int tt_assert (struct evhttp_connection*) ;

__attribute__((used)) static void
http_connection_async_test(void *arg)
{
 struct basic_test_data *data = arg;
 ev_uint16_t port = 0;
 struct evhttp_connection *evcon = ((void*)0);
 struct evhttp_request *req = ((void*)0);
 struct evdns_base *dns_base = ((void*)0);
 ev_uint16_t portnum = 0;
 char address[64];
 struct evhttp *http = http_setup(&port, data->base, 0);

 exit_base = data->base;
 tt_assert(regress_dnsserver(data->base, &portnum, search_table));

 dns_base = evdns_base_new(data->base, 0 );
 tt_assert(dns_base);



 evutil_snprintf(address, sizeof(address), "127.0.0.1:%d", portnum);
 evdns_base_nameserver_ip_add(dns_base, address);

 test_ok = 0;

 evcon = evhttp_connection_base_new(data->base, dns_base, "127.0.0.1", port);
 tt_assert(evcon);






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
 if (dns_base)
  evdns_base_free(dns_base, 0);
 regress_clean_dnsserver();
}
