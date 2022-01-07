
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evhttp_request {int major; int minor; int flags; int output_headers; int input_headers; int output_buffer; int response_code_line; int response_code; } ;
struct evhttp_connection {TYPE_1__* http_server; int bufev; } ;
struct TYPE_2__ {char* default_content_type; } ;


 int EVHTTP_PROXY_REQUEST ;
 int bufferevent_get_output (int ) ;
 int evbuffer_add_printf (int ,char*,int,int,int ,int ) ;
 int evbuffer_get_length (int ) ;
 int evhttp_add_header (int ,char*,char*) ;
 int * evhttp_find_header (int ,char*) ;
 scalar_t__ evhttp_is_connection_close (int,int ) ;
 int evhttp_is_connection_keepalive (int ) ;
 int evhttp_maybe_add_content_length_header (int ,int ) ;
 int evhttp_maybe_add_date_header (int ) ;
 int evhttp_remove_header (int ,char*) ;
 scalar_t__ evhttp_response_needs_body (struct evhttp_request*) ;

__attribute__((used)) static void
evhttp_make_header_response(struct evhttp_connection *evcon,
    struct evhttp_request *req)
{
 int is_keepalive = evhttp_is_connection_keepalive(req->input_headers);
 evbuffer_add_printf(bufferevent_get_output(evcon->bufev),
     "HTTP/%d.%d %d %s\r\n",
     req->major, req->minor, req->response_code,
     req->response_code_line);

 if (req->major == 1) {
  if (req->minor >= 1)
   evhttp_maybe_add_date_header(req->output_headers);





  if (req->minor == 0 && is_keepalive)
   evhttp_add_header(req->output_headers,
       "Connection", "keep-alive");

  if ((req->minor >= 1 || is_keepalive) &&
      evhttp_response_needs_body(req)) {





   evhttp_maybe_add_content_length_header(
    req->output_headers,
    evbuffer_get_length(req->output_buffer));
  }
 }


 if (evhttp_response_needs_body(req)) {
  if (evhttp_find_header(req->output_headers,
   "Content-Type") == ((void*)0)
      && evcon->http_server->default_content_type) {
   evhttp_add_header(req->output_headers,
       "Content-Type",
       evcon->http_server->default_content_type);
  }
 }


 if (evhttp_is_connection_close(req->flags, req->input_headers)) {
  evhttp_remove_header(req->output_headers, "Connection");
  if (!(req->flags & EVHTTP_PROXY_REQUEST))
      evhttp_add_header(req->output_headers, "Connection", "close");
  evhttp_remove_header(req->output_headers, "Proxy-Connection");
 }
}
