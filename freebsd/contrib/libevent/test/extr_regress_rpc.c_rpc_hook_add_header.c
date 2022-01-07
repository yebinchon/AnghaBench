
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int output_headers; int input_headers; } ;
struct evbuffer {int dummy; } ;


 int EVRPC_CONTINUE ;
 int assert (int ) ;
 int evhttp_add_header (int ,char*,char const*) ;
 int * evrpc_hook_get_connection (void*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
rpc_hook_add_header(void *ctx, struct evhttp_request *req,
    struct evbuffer *evbuf, void *arg)
{
 const char *hook_type = arg;
 if (strcmp("input", hook_type) == 0)
  evhttp_add_header(req->input_headers, "X-Hook", hook_type);
 else
  evhttp_add_header(req->output_headers, "X-Hook", hook_type);

 assert(evrpc_hook_get_connection(ctx) != ((void*)0));

 return (EVRPC_CONTINUE);
}
