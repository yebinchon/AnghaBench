
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct terminate_state {int base; struct evhttp_request* req; } ;
struct evhttp_request {int dummy; } ;


 int EV_TIMEOUT ;
 int HTTP_OK ;
 int event_base_once (int ,int,int ,int ,void*,struct timeval*) ;
 int evhttp_connection_set_closecb (int ,int ,void*) ;
 int evhttp_request_get_connection (struct evhttp_request*) ;
 int evhttp_send_reply_start (struct evhttp_request*,int ,char*) ;
 int terminate_chunked_close_cb ;
 int terminate_chunked_trickle_cb ;

__attribute__((used)) static void
terminate_chunked_cb(struct evhttp_request *req, void *arg)
{
 struct terminate_state *state = arg;
 struct timeval tv;


 evhttp_connection_set_closecb(
  evhttp_request_get_connection(req),
  terminate_chunked_close_cb, arg);

 state->req = req;

 evhttp_send_reply_start(req, HTTP_OK, "OK");

 tv.tv_sec = 0;
 tv.tv_usec = 3000;
 event_base_once(state->base, -1, EV_TIMEOUT, terminate_chunked_trickle_cb, arg, &tv);
}
