
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
typedef struct evhttp_request evhttp_connection ;
struct evhttp {int dummy; } ;
struct basic_test_data {int base; } ;
typedef int ev_uint16_t ;


 int EVHTTP_REQ_POST ;
 int EVHTTP_SERVER_LINGERING_CLOSE ;
 int evbuffer_add_printf (int ,char*,char*) ;
 int event_base_dispatch (int ) ;
 int evhttp_add_header (int ,char*,char*) ;
 struct evhttp_request* evhttp_connection_base_new (int ,int *,char*,int ) ;
 int evhttp_connection_free (struct evhttp_request*) ;
 int evhttp_connection_set_local_address (struct evhttp_request*,char*) ;
 int evhttp_free (struct evhttp*) ;
 int evhttp_make_request (struct evhttp_request*,struct evhttp_request*,int ,char*) ;
 int evhttp_request_get_output_buffer (struct evhttp_request*) ;
 int evhttp_request_get_output_headers (struct evhttp_request*) ;
 struct evhttp_request* evhttp_request_new (void (*) (struct evhttp_request*,void*),int ) ;
 int evhttp_set_flags (struct evhttp*,int ) ;
 int evhttp_set_max_body_size (struct evhttp*,size_t) ;
 int free (char*) ;
 void http_failed_request_done (struct evhttp_request*,void*) ;
 void http_large_entity_test_done (struct evhttp_request*,void*) ;
 struct evhttp* http_setup (int *,int ,int ) ;
 char* malloc (size_t) ;
 int memset (char*,char,size_t) ;
 int test_ok ;
 int tt_abort_msg (char*) ;
 int tt_assert (int) ;

__attribute__((used)) static void
http_lingering_close_test_impl(void *arg, int lingering)
{
 struct basic_test_data *data = arg;
 ev_uint16_t port = 0;
 struct evhttp_connection *evcon = ((void*)0);
 struct evhttp_request *req = ((void*)0);
 char *long_str = ((void*)0);
 size_t size = (1<<20) * 3;
 void (*cb)(struct evhttp_request *, void *);
 struct evhttp *http = http_setup(&port, data->base, 0);

 test_ok = 0;

 if (lingering)
  tt_assert(!evhttp_set_flags(http, EVHTTP_SERVER_LINGERING_CLOSE));
 evhttp_set_max_body_size(http, size / 2);

 evcon = evhttp_connection_base_new(data->base, ((void*)0), "127.0.0.1", port);
 tt_assert(evcon);
 evhttp_connection_set_local_address(evcon, "127.0.0.1");






 long_str = malloc(size);
 memset(long_str, 'a', size);
 long_str[size - 1] = '\0';

 if (lingering)
  cb = http_large_entity_test_done;
 else
  cb = http_failed_request_done;
 req = evhttp_request_new(cb, data->base);
 tt_assert(req);
 evhttp_add_header(evhttp_request_get_output_headers(req), "Host", "somehost");
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
 if (long_str)
  free(long_str);
}
