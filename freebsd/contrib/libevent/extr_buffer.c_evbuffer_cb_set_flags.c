
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_cb_entry {int flags; } ;
struct evbuffer {int dummy; } ;
typedef int ev_uint32_t ;


 int EVBUFFER_CB_INTERNAL_FLAGS ;
 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;

int
evbuffer_cb_set_flags(struct evbuffer *buffer,
        struct evbuffer_cb_entry *cb, ev_uint32_t flags)
{

 flags &= ~EVBUFFER_CB_INTERNAL_FLAGS;
 EVBUFFER_LOCK(buffer);
 cb->flags |= flags;
 EVBUFFER_UNLOCK(buffer);
 return 0;
}
