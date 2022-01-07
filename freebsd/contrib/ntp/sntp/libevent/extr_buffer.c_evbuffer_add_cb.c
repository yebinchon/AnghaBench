
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cb_func; } ;
struct evbuffer_cb_entry {int flags; void* cbarg; TYPE_1__ cb; } ;
struct evbuffer {int callbacks; } ;
typedef int evbuffer_cb_func ;


 int EVBUFFER_CB_ENABLED ;
 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 int LIST_INSERT_HEAD (int *,struct evbuffer_cb_entry*,int ) ;
 struct evbuffer_cb_entry* mm_calloc (int,int) ;
 int next ;

struct evbuffer_cb_entry *
evbuffer_add_cb(struct evbuffer *buffer, evbuffer_cb_func cb, void *cbarg)
{
 struct evbuffer_cb_entry *e;
 if (! (e = mm_calloc(1, sizeof(struct evbuffer_cb_entry))))
  return ((void*)0);
 EVBUFFER_LOCK(buffer);
 e->cb.cb_func = cb;
 e->cbarg = cbarg;
 e->flags = EVBUFFER_CB_ENABLED;
 LIST_INSERT_HEAD(&buffer->callbacks, e, next);
 EVBUFFER_UNLOCK(buffer);
 return e;
}
