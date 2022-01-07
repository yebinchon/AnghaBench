
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int flags; } ;
typedef scalar_t__ ev_uint64_t ;
typedef int ev_uint32_t ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;

int
evbuffer_clear_flags(struct evbuffer *buf, ev_uint64_t flags)
{
 EVBUFFER_LOCK(buf);
 buf->flags &= ~(ev_uint32_t)flags;
 EVBUFFER_UNLOCK(buf);
 return 0;
}
