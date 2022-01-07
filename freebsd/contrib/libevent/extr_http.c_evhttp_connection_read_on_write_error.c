
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int kind; } ;
struct evhttp_connection {int flags; int bufev; } ;
struct evbuffer {int dummy; } ;


 int EVHTTP_CON_READING_ERROR ;
 int EVHTTP_RESPONSE ;
 int EVREQ_HTTP_EOF ;
 struct evbuffer* bufferevent_get_output (int ) ;
 int evbuffer_drain (struct evbuffer*,int ) ;
 int evbuffer_freeze (struct evbuffer*,int) ;
 int evbuffer_get_length (struct evbuffer*) ;
 int evbuffer_unfreeze (struct evbuffer*,int) ;
 int evhttp_connection_fail_ (struct evhttp_connection*,int ) ;
 int evhttp_start_read_ (struct evhttp_connection*) ;

__attribute__((used)) static void
evhttp_connection_read_on_write_error(struct evhttp_connection *evcon,
    struct evhttp_request *req)
{
 struct evbuffer *buf;


 if (evcon->flags & EVHTTP_CON_READING_ERROR) {
  evcon->flags &= ~EVHTTP_CON_READING_ERROR;
  evhttp_connection_fail_(evcon, EVREQ_HTTP_EOF);
  return;
 }

 req->kind = EVHTTP_RESPONSE;

 buf = bufferevent_get_output(evcon->bufev);
 evbuffer_unfreeze(buf, 1);
 evbuffer_drain(buf, evbuffer_get_length(buf));
 evbuffer_freeze(buf, 1);

 evhttp_start_read_(evcon);
 evcon->flags |= EVHTTP_CON_READING_ERROR;
}
