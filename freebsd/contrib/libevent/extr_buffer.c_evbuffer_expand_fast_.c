
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {int flags; scalar_t__ off; struct evbuffer_chain* next; scalar_t__ buffer_len; scalar_t__ misalign; } ;
struct evbuffer {struct evbuffer_chain* last; struct evbuffer_chain** last_with_datap; struct evbuffer_chain* first; } ;


 int ASSERT_EVBUFFER_LOCKED (struct evbuffer*) ;
 scalar_t__ CHAIN_SPACE_LEN (struct evbuffer_chain*) ;
 int EVBUFFER_IMMUTABLE ;
 int EVUTIL_ASSERT (int) ;
 int ZERO_CHAIN (struct evbuffer*) ;
 int evbuffer_chain_free (struct evbuffer_chain*) ;
 int evbuffer_chain_insert (struct evbuffer*,struct evbuffer_chain*) ;
 struct evbuffer_chain* evbuffer_chain_new (size_t) ;

int
evbuffer_expand_fast_(struct evbuffer *buf, size_t datlen, int n)
{
 struct evbuffer_chain *chain = buf->last, *tmp, *next;
 size_t avail;
 int used;

 ASSERT_EVBUFFER_LOCKED(buf);
 EVUTIL_ASSERT(n >= 2);

 if (chain == ((void*)0) || (chain->flags & EVBUFFER_IMMUTABLE)) {


  chain = evbuffer_chain_new(datlen);
  if (chain == ((void*)0))
   return (-1);

  evbuffer_chain_insert(buf, chain);
  return (0);
 }

 used = 0;
 avail = 0;



 for (chain = *buf->last_with_datap; chain; chain = chain->next) {
  if (chain->off) {
   size_t space = (size_t) CHAIN_SPACE_LEN(chain);
   EVUTIL_ASSERT(chain == *buf->last_with_datap);
   if (space) {
    avail += space;
    ++used;
   }
  } else {

   chain->misalign = 0;
   avail += chain->buffer_len;
   ++used;
  }
  if (avail >= datlen) {

   return (0);
  }
  if (used == n)
   break;
 }




 if (used < n) {


  EVUTIL_ASSERT(chain == ((void*)0));

  tmp = evbuffer_chain_new(datlen - avail);
  if (tmp == ((void*)0))
   return (-1);

  buf->last->next = tmp;
  buf->last = tmp;



  return (0);
 } else {

  int rmv_all = 0;
  chain = *buf->last_with_datap;
  if (!chain->off) {
   EVUTIL_ASSERT(chain == buf->first);
   rmv_all = 1;
   avail = 0;
  } else {


   avail = (size_t) CHAIN_SPACE_LEN(chain);
   chain = chain->next;
  }


  for (; chain; chain = next) {
   next = chain->next;
   EVUTIL_ASSERT(chain->off == 0);
   evbuffer_chain_free(chain);
  }
  EVUTIL_ASSERT(datlen >= avail);
  tmp = evbuffer_chain_new(datlen - avail);
  if (tmp == ((void*)0)) {
   if (rmv_all) {
    ZERO_CHAIN(buf);
   } else {
    buf->last = *buf->last_with_datap;
    (*buf->last_with_datap)->next = ((void*)0);
   }
   return (-1);
  }

  if (rmv_all) {
   buf->first = buf->last = tmp;
   buf->last_with_datap = &buf->first;
  } else {
   (*buf->last_with_datap)->next = tmp;
   buf->last = tmp;
  }
  return (0);
 }
}
