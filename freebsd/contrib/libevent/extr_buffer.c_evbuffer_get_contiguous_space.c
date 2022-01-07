
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {size_t off; } ;
struct evbuffer {struct evbuffer_chain* first; } ;


 int EVBUFFER_LOCK (struct evbuffer const*) ;
 int EVBUFFER_UNLOCK (struct evbuffer const*) ;

size_t
evbuffer_get_contiguous_space(const struct evbuffer *buf)
{
 struct evbuffer_chain *chain;
 size_t result;

 EVBUFFER_LOCK(buf);
 chain = buf->first;
 result = (chain != ((void*)0) ? chain->off : 0);
 EVBUFFER_UNLOCK(buf);

 return result;
}
