
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct evbuffer {int deferred_cbs; int deferred; struct event_base* cb_queue; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 int evbuffer_deferred_callback ;
 int event_base_get_npriorities (struct event_base*) ;
 int event_deferred_cb_init_ (int *,int,int ,struct evbuffer*) ;

int
evbuffer_defer_callbacks(struct evbuffer *buffer, struct event_base *base)
{
 EVBUFFER_LOCK(buffer);
 buffer->cb_queue = base;
 buffer->deferred_cbs = 1;
 event_deferred_cb_init_(&buffer->deferred,
     event_base_get_npriorities(base) / 2,
     evbuffer_deferred_callback, buffer);
 EVBUFFER_UNLOCK(buffer);
 return 0;
}
