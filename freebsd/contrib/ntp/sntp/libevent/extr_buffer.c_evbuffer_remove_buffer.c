
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {size_t off; scalar_t__ misalign; scalar_t__ buffer; struct evbuffer_chain* next; } ;
struct evbuffer {size_t total_len; size_t n_add_for_cb; size_t n_del_for_cb; struct evbuffer_chain* first; struct evbuffer_chain* last; struct evbuffer_chain** last_with_datap; scalar_t__ freeze_start; scalar_t__ freeze_end; } ;


 int EVBUFFER_LOCK2 (struct evbuffer*,struct evbuffer*) ;
 int EVBUFFER_UNLOCK2 (struct evbuffer*,struct evbuffer*) ;
 int EVUTIL_ASSERT (int) ;
 int advance_last_with_data (struct evbuffer*) ;
 int evbuffer_add (struct evbuffer*,scalar_t__,size_t) ;
 int evbuffer_add_buffer (struct evbuffer*,struct evbuffer*) ;
 struct evbuffer_chain** evbuffer_free_trailing_empty_chains (struct evbuffer*) ;
 int evbuffer_invoke_callbacks_ (struct evbuffer*) ;

int
evbuffer_remove_buffer(struct evbuffer *src, struct evbuffer *dst,
    size_t datlen)
{



 struct evbuffer_chain *chain, *previous;
 size_t nread = 0;
 int result;

 EVBUFFER_LOCK2(src, dst);

 chain = previous = src->first;

 if (datlen == 0 || dst == src) {
  result = 0;
  goto done;
 }

 if (dst->freeze_end || src->freeze_start) {
  result = -1;
  goto done;
 }


 if (datlen >= src->total_len) {
  datlen = src->total_len;
  evbuffer_add_buffer(dst, src);
  result = (int)datlen;
  goto done;
 }


 while (chain->off <= datlen) {



  EVUTIL_ASSERT(chain != *src->last_with_datap);
  nread += chain->off;
  datlen -= chain->off;
  previous = chain;
  if (src->last_with_datap == &chain->next)
   src->last_with_datap = &src->first;
  chain = chain->next;
 }

 if (nread) {

  struct evbuffer_chain **chp;
  chp = evbuffer_free_trailing_empty_chains(dst);

  if (dst->first == ((void*)0)) {
   dst->first = src->first;
  } else {
   *chp = src->first;
  }
  dst->last = previous;
  previous->next = ((void*)0);
  src->first = chain;
  advance_last_with_data(dst);

  dst->total_len += nread;
  dst->n_add_for_cb += nread;
 }



 evbuffer_add(dst, chain->buffer + chain->misalign, datlen);
 chain->misalign += datlen;
 chain->off -= datlen;
 nread += datlen;




 src->total_len -= nread;
 src->n_del_for_cb += nread;

 if (nread) {
  evbuffer_invoke_callbacks_(dst);
  evbuffer_invoke_callbacks_(src);
 }
 result = (int)nread;

done:
 EVBUFFER_UNLOCK2(src, dst);
 return result;
}
