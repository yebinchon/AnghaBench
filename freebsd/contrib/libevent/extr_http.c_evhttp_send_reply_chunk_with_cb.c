
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {scalar_t__ chunked; struct evhttp_connection* evcon; } ;
struct evhttp_connection {int bufev; } ;
struct evbuffer {int dummy; } ;


 struct evbuffer* bufferevent_get_output (int ) ;
 int evbuffer_add (struct evbuffer*,char*,int) ;
 int evbuffer_add_buffer (struct evbuffer*,struct evbuffer*) ;
 int evbuffer_add_printf (struct evbuffer*,char*,unsigned int) ;
 scalar_t__ evbuffer_get_length (struct evbuffer*) ;
 int evhttp_response_needs_body (struct evhttp_request*) ;
 int evhttp_write_buffer (struct evhttp_connection*,void (*) (struct evhttp_connection*,void*),void*) ;

void
evhttp_send_reply_chunk_with_cb(struct evhttp_request *req, struct evbuffer *databuf,
    void (*cb)(struct evhttp_connection *, void *), void *arg)
{
 struct evhttp_connection *evcon = req->evcon;
 struct evbuffer *output;

 if (evcon == ((void*)0))
  return;

 output = bufferevent_get_output(evcon->bufev);

 if (evbuffer_get_length(databuf) == 0)
  return;
 if (!evhttp_response_needs_body(req))
  return;
 if (req->chunked) {
  evbuffer_add_printf(output, "%x\r\n",
        (unsigned)evbuffer_get_length(databuf));
 }
 evbuffer_add_buffer(output, databuf);
 if (req->chunked) {
  evbuffer_add(output, "\r\n", 2);
 }
 evhttp_write_buffer(evcon, cb, arg);
}
