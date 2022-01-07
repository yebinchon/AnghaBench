
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct terminate_state {struct terminate_state* base; int req; } ;
struct evbuffer {int dummy; } ;
typedef int evutil_socket_t ;


 int EVUTIL_ASSERT (struct terminate_state*) ;
 int EV_TIMEOUT ;
 int evbuffer_add_printf (struct evbuffer*,char*,struct evbuffer*) ;
 int evbuffer_free (struct evbuffer*) ;
 struct evbuffer* evbuffer_new () ;
 int event_base_loopexit (struct terminate_state*,int *) ;
 int event_base_once (struct terminate_state*,int,int ,void (*) (int ,short,void*),void*,struct timeval*) ;
 int evhttp_request_free (int ) ;
 int * evhttp_request_get_connection (int ) ;
 int evhttp_send_reply_chunk (int ,struct evbuffer*) ;
 int test_ok ;

__attribute__((used)) static void
terminate_chunked_trickle_cb(evutil_socket_t fd, short events, void *arg)
{
 struct terminate_state *state = arg;
 struct evbuffer *evb;
 struct timeval tv;

 if (evhttp_request_get_connection(state->req) == ((void*)0)) {
  test_ok = 1;
  evhttp_request_free(state->req);
  event_base_loopexit(state->base,((void*)0));
  return;
 }

 evb = evbuffer_new();
 evbuffer_add_printf(evb, "%p", evb);
 evhttp_send_reply_chunk(state->req, evb);
 evbuffer_free(evb);

 tv.tv_sec = 0;
 tv.tv_usec = 3000;
 EVUTIL_ASSERT(state);
 EVUTIL_ASSERT(state->base);
 event_base_once(state->base, -1, EV_TIMEOUT, terminate_chunked_trickle_cb, arg, &tv);
}
