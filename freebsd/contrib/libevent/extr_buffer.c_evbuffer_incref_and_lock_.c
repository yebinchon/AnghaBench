
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int refcnt; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;

void
evbuffer_incref_and_lock_(struct evbuffer *buf)
{
 EVBUFFER_LOCK(buf);
 ++buf->refcnt;
}
