
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_request {int dummy; } ;
struct evhttp_connection {int bufev; } ;
struct evbuffer {int dummy; } ;





 int EVREQ_HTTP_DATA_TOO_LONG ;
 int EV_READ ;


 int bufferevent_disable (int ,int ) ;
 int bufferevent_enable (int ,int ) ;
 struct evbuffer* bufferevent_get_input (int ) ;
 int evhttp_connection_done (struct evhttp_connection*) ;
 int evhttp_connection_fail_ (struct evhttp_connection*,int ) ;
 int evhttp_parse_headers_ (struct evhttp_request*,struct evbuffer*) ;

__attribute__((used)) static void
evhttp_read_trailer(struct evhttp_connection *evcon, struct evhttp_request *req)
{
 struct evbuffer *buf = bufferevent_get_input(evcon->bufev);

 switch (evhttp_parse_headers_(req, buf)) {
 case 131:
 case 130:
  evhttp_connection_fail_(evcon, EVREQ_HTTP_DATA_TOO_LONG);
  break;
 case 132:
  bufferevent_disable(evcon->bufev, EV_READ);
  evhttp_connection_done(evcon);
  break;
 case 129:
 case 128:
 default:
  bufferevent_enable(evcon->bufev, EV_READ);
  break;
 }
}
