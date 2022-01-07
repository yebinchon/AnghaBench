
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct evhttp_request {scalar_t__ kind; int chunked; int ntoread; TYPE_1__* evcon; int input_headers; int type; } ;
struct evhttp_connection {int bufev; int state; } ;
typedef scalar_t__ ev_uint64_t ;
struct TYPE_2__ {scalar_t__ max_body_size; } ;


 int EVCON_READING_BODY ;
 scalar_t__ EVHTTP_REQUEST ;
 int EVREQ_HTTP_INVALID_HEADER ;
 scalar_t__ EV_INT64_MAX ;
 int HTTP_ENTITYTOOLARGE ;
 int HTTP_EXPECTATIONFAILED ;
 scalar_t__ REQ_VERSION_ATLEAST (struct evhttp_request*,int,int) ;
 int bufferevent_get_input (int ) ;
 int evbuffer_get_length (int ) ;
 int evhttp_connection_done (struct evhttp_connection*) ;
 int evhttp_connection_fail_ (struct evhttp_connection*,int ) ;
 char* evhttp_find_header (int ,char*) ;
 int evhttp_get_body_length (struct evhttp_request*) ;
 int evhttp_method_may_have_body (int ) ;
 int evhttp_read_body (struct evhttp_connection*,struct evhttp_request*) ;
 int evhttp_send_continue (struct evhttp_connection*,struct evhttp_request*) ;
 int evhttp_send_error (struct evhttp_request*,int ,int *) ;
 scalar_t__ evutil_ascii_strcasecmp (char const*,char*) ;

__attribute__((used)) static void
evhttp_get_body(struct evhttp_connection *evcon, struct evhttp_request *req)
{
 const char *xfer_enc;


 if (req->kind == EVHTTP_REQUEST &&
     !evhttp_method_may_have_body(req->type)) {
  evhttp_connection_done(evcon);
  return;
 }
 evcon->state = EVCON_READING_BODY;
 xfer_enc = evhttp_find_header(req->input_headers, "Transfer-Encoding");
 if (xfer_enc != ((void*)0) && evutil_ascii_strcasecmp(xfer_enc, "chunked") == 0) {
  req->chunked = 1;
  req->ntoread = -1;
 } else {
  if (evhttp_get_body_length(req) == -1) {
   evhttp_connection_fail_(evcon,
       EVREQ_HTTP_INVALID_HEADER);
   return;
  }
  if (req->kind == EVHTTP_REQUEST && req->ntoread < 1) {


   evhttp_connection_done(evcon);
   return;
  }
 }


 if (req->kind == EVHTTP_REQUEST && REQ_VERSION_ATLEAST(req, 1, 1)) {
  const char *expect;

  expect = evhttp_find_header(req->input_headers, "Expect");
  if (expect) {
   if (!evutil_ascii_strcasecmp(expect, "100-continue")) {






    if (req->ntoread > 0) {

     if ((req->evcon->max_body_size <= EV_INT64_MAX) && (ev_uint64_t)req->ntoread > req->evcon->max_body_size) {
      evhttp_send_error(req, HTTP_ENTITYTOOLARGE, ((void*)0));
      return;
     }
    }
    if (!evbuffer_get_length(bufferevent_get_input(evcon->bufev)))
     evhttp_send_continue(evcon, req);
   } else {
    evhttp_send_error(req, HTTP_EXPECTATIONFAILED,
     ((void*)0));
    return;
   }
  }
 }

 evhttp_read_body(evcon, req);

}
