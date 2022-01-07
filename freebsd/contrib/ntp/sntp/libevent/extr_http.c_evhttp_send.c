
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int userdone; int output_buffer; struct evhttp_connection* evcon; } ;
struct evhttp_connection {int requests; } ;
struct evbuffer {int dummy; } ;


 int EVUTIL_ASSERT (int) ;
 struct evhttp_request* TAILQ_FIRST (int *) ;
 int evbuffer_add_buffer (int ,struct evbuffer*) ;
 int evhttp_make_header (struct evhttp_connection*,struct evhttp_request*) ;
 int evhttp_request_free (struct evhttp_request*) ;
 int evhttp_send_done ;
 int evhttp_write_buffer (struct evhttp_connection*,int ,int *) ;

__attribute__((used)) static inline void
evhttp_send(struct evhttp_request *req, struct evbuffer *databuf)
{
 struct evhttp_connection *evcon = req->evcon;

 if (evcon == ((void*)0)) {
  evhttp_request_free(req);
  return;
 }

 EVUTIL_ASSERT(TAILQ_FIRST(&evcon->requests) == req);


 req->userdone = 1;


 if (databuf != ((void*)0))
  evbuffer_add_buffer(req->output_buffer, databuf);


 evhttp_make_header(evcon, req);

 evhttp_write_buffer(evcon, evhttp_send_done, ((void*)0));
}
