
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int chunked; int evcon; int output_headers; } ;


 scalar_t__ REQ_VERSION_ATLEAST (struct evhttp_request*,int,int) ;
 int evhttp_add_header (int ,char*,char*) ;
 int * evhttp_find_header (int ,char*) ;
 int evhttp_make_header (int ,struct evhttp_request*) ;
 int evhttp_response_code_ (struct evhttp_request*,int,char const*) ;
 scalar_t__ evhttp_response_needs_body (struct evhttp_request*) ;
 int evhttp_write_buffer (int ,int *,int *) ;

void
evhttp_send_reply_start(struct evhttp_request *req, int code,
    const char *reason)
{
 evhttp_response_code_(req, code, reason);
 if (evhttp_find_header(req->output_headers, "Content-Length") == ((void*)0) &&
     REQ_VERSION_ATLEAST(req, 1, 1) &&
     evhttp_response_needs_body(req)) {





  evhttp_add_header(req->output_headers, "Transfer-Encoding",
      "chunked");
  req->chunked = 1;
 } else {
  req->chunked = 0;
 }
 evhttp_make_header(req->evcon, req);
 evhttp_write_buffer(req->evcon, ((void*)0), ((void*)0));
}
