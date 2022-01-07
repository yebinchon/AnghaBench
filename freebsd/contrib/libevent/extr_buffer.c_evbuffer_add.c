
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {int flags; scalar_t__ misalign; size_t buffer_len; size_t off; scalar_t__ buffer; } ;
struct evbuffer {size_t total_len; size_t n_add_for_cb; struct evbuffer_chain** last_with_datap; struct evbuffer_chain* last; scalar_t__ freeze_end; } ;
typedef scalar_t__ ev_uint64_t ;


 int CHAIN_PINNED (struct evbuffer_chain*) ;
 scalar_t__ EVBUFFER_CHAIN_MAX ;
 int EVBUFFER_CHAIN_MAX_AUTO_SIZE ;
 int EVBUFFER_IMMUTABLE ;
 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 int EVUTIL_ASSERT (int) ;
 size_t EV_SIZE_MAX ;
 int evbuffer_chain_align (struct evbuffer_chain*) ;
 int evbuffer_chain_insert (struct evbuffer*,struct evbuffer_chain*) ;
 struct evbuffer_chain* evbuffer_chain_new (size_t) ;
 scalar_t__ evbuffer_chain_should_realign (struct evbuffer_chain*,size_t) ;
 int evbuffer_invoke_callbacks_ (struct evbuffer*) ;
 int memcpy (scalar_t__,unsigned char const*,size_t) ;

int
evbuffer_add(struct evbuffer *buf, const void *data_in, size_t datlen)
{
 struct evbuffer_chain *chain, *tmp;
 const unsigned char *data = data_in;
 size_t remain, to_alloc;
 int result = -1;

 EVBUFFER_LOCK(buf);

 if (buf->freeze_end) {
  goto done;
 }

 if (datlen > EV_SIZE_MAX - buf->total_len) {
  goto done;
 }

 if (*buf->last_with_datap == ((void*)0)) {
  chain = buf->last;
 } else {
  chain = *buf->last_with_datap;
 }



 if (chain == ((void*)0)) {
  chain = evbuffer_chain_new(datlen);
  if (!chain)
   goto done;
  evbuffer_chain_insert(buf, chain);
 }

 if ((chain->flags & EVBUFFER_IMMUTABLE) == 0) {

  EVUTIL_ASSERT(chain->misalign >= 0 &&
      (ev_uint64_t)chain->misalign <= EVBUFFER_CHAIN_MAX);
  remain = chain->buffer_len - (size_t)chain->misalign - chain->off;
  if (remain >= datlen) {


   memcpy(chain->buffer + chain->misalign + chain->off,
       data, datlen);
   chain->off += datlen;
   buf->total_len += datlen;
   buf->n_add_for_cb += datlen;
   goto out;
  } else if (!CHAIN_PINNED(chain) &&
      evbuffer_chain_should_realign(chain, datlen)) {

   evbuffer_chain_align(chain);

   memcpy(chain->buffer + chain->off, data, datlen);
   chain->off += datlen;
   buf->total_len += datlen;
   buf->n_add_for_cb += datlen;
   goto out;
  }
 } else {

  remain = 0;
 }


 to_alloc = chain->buffer_len;
 if (to_alloc <= EVBUFFER_CHAIN_MAX_AUTO_SIZE/2)
  to_alloc <<= 1;
 if (datlen > to_alloc)
  to_alloc = datlen;
 tmp = evbuffer_chain_new(to_alloc);
 if (tmp == ((void*)0))
  goto done;

 if (remain) {
  memcpy(chain->buffer + chain->misalign + chain->off,
      data, remain);
  chain->off += remain;
  buf->total_len += remain;
  buf->n_add_for_cb += remain;
 }

 data += remain;
 datlen -= remain;

 memcpy(tmp->buffer, data, datlen);
 tmp->off = datlen;
 evbuffer_chain_insert(buf, tmp);
 buf->n_add_for_cb += datlen;

out:
 evbuffer_invoke_callbacks_(buf);
 result = 0;
done:
 EVBUFFER_UNLOCK(buf);
 return result;
}
