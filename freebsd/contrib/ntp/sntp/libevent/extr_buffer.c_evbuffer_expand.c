
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {int dummy; } ;
struct evbuffer {int dummy; } ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 struct evbuffer_chain* evbuffer_expand_singlechain (struct evbuffer*,size_t) ;

int
evbuffer_expand(struct evbuffer *buf, size_t datlen)
{
 struct evbuffer_chain *chain;

 EVBUFFER_LOCK(buf);
 chain = evbuffer_expand_singlechain(buf, datlen);
 EVBUFFER_UNLOCK(buf);
 return chain ? 0 : -1;
}
