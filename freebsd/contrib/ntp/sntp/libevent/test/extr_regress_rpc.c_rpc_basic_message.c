
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int dummy; } ;
struct evrpc_base {int dummy; } ;
struct evhttp_request {int output_buffer; int output_headers; } ;
struct evhttp_connection {int dummy; } ;
struct evhttp {int dummy; } ;
typedef int ev_uint16_t ;


 int EVHTTP_REQ_POST ;
 int EVTAG_ASSIGN (struct msg*,int ,char*) ;
 int event_dispatch () ;
 int evhttp_add_header (int ,char*,char*) ;
 int evhttp_connection_free (struct evhttp_connection*) ;
 struct evhttp_connection* evhttp_connection_new (char*,int ) ;
 int evhttp_free (struct evhttp*) ;
 int evhttp_make_request (struct evhttp_connection*,struct evhttp_request*,int ,char*) ;
 struct evhttp_request* evhttp_request_new (int ,int *) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int from_name ;
 int msg_free (struct msg*) ;
 int msg_marshal (int ,struct msg*) ;
 struct msg* msg_new () ;
 int rpc_postrequest_done ;
 int rpc_setup (struct evhttp**,int *,struct evrpc_base**) ;
 int rpc_teardown (struct evrpc_base*) ;
 int stdout ;
 scalar_t__ test_ok ;
 int to_name ;
 int tt_assert (struct evhttp_connection*) ;

__attribute__((used)) static void
rpc_basic_message(void)
{
 ev_uint16_t port;
 struct evhttp *http = ((void*)0);
 struct evrpc_base *base = ((void*)0);
 struct evhttp_connection *evcon = ((void*)0);
 struct evhttp_request *req = ((void*)0);
 struct msg *msg;

 rpc_setup(&http, &port, &base);

 evcon = evhttp_connection_new("127.0.0.1", port);
 tt_assert(evcon);






 req = evhttp_request_new(rpc_postrequest_done, ((void*)0));
 if (req == ((void*)0)) {
  fprintf(stdout, "FAILED\n");
  exit(1);
 }


 evhttp_add_header(req->output_headers, "Host", "somehost");


 msg = msg_new();
 EVTAG_ASSIGN(msg, from_name, "niels");
 EVTAG_ASSIGN(msg, to_name, "tester");
 msg_marshal(req->output_buffer, msg);
 msg_free(msg);

 if (evhttp_make_request(evcon, req,
  EVHTTP_REQ_POST,
  "/.rpc.Message") == -1) {
  fprintf(stdout, "FAILED\n");
  exit(1);
 }

 test_ok = 0;

 event_dispatch();

 evhttp_connection_free(evcon);

 rpc_teardown(base);

end:
 evhttp_free(http);
}
