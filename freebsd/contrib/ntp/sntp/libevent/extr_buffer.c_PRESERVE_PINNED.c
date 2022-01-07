
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {scalar_t__ off; scalar_t__ misalign; scalar_t__ buffer; struct evbuffer_chain* next; } ;
struct evbuffer {struct evbuffer_chain** last_with_datap; struct evbuffer_chain* last; } ;


 int ASSERT_EVBUFFER_LOCKED (struct evbuffer*) ;
 int CHAIN_PINNED_R (struct evbuffer_chain*) ;
 int EVUTIL_ASSERT (int) ;
 int HAS_PINNED_R (struct evbuffer*) ;
 struct evbuffer_chain* evbuffer_chain_new (scalar_t__) ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
PRESERVE_PINNED(struct evbuffer *src, struct evbuffer_chain **first,
  struct evbuffer_chain **last)
{
 struct evbuffer_chain *chain, **pinned;

 ASSERT_EVBUFFER_LOCKED(src);

 if (!HAS_PINNED_R(src)) {
  *first = *last = ((void*)0);
  return 0;
 }

 pinned = src->last_with_datap;
 if (!CHAIN_PINNED_R(*pinned))
  pinned = &(*pinned)->next;
 EVUTIL_ASSERT(CHAIN_PINNED_R(*pinned));
 chain = *first = *pinned;
 *last = src->last;



 if (chain->off) {
  struct evbuffer_chain *tmp;

  EVUTIL_ASSERT(pinned == src->last_with_datap);
  tmp = evbuffer_chain_new(chain->off);
  if (!tmp)
   return -1;
  memcpy(tmp->buffer, chain->buffer + chain->misalign,
   chain->off);
  tmp->off = chain->off;
  *src->last_with_datap = tmp;
  src->last = tmp;
  chain->misalign += chain->off;
  chain->off = 0;
 } else {
  src->last = *src->last_with_datap;
  *pinned = ((void*)0);
 }

 return 0;
}
