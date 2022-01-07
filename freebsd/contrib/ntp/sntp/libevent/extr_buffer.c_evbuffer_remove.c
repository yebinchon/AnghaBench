
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_ssize_t ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 int evbuffer_copyout_from (struct evbuffer*,int *,void*,size_t) ;
 scalar_t__ evbuffer_drain (struct evbuffer*,int) ;

int
evbuffer_remove(struct evbuffer *buf, void *data_out, size_t datlen)
{
 ev_ssize_t n;
 EVBUFFER_LOCK(buf);
 n = evbuffer_copyout_from(buf, ((void*)0), data_out, datlen);
 if (n > 0) {
  if (evbuffer_drain(buf, n)<0)
   n = -1;
 }
 EVBUFFER_UNLOCK(buf);
 return (int)n;
}
