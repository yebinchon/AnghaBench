
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos_in_chain; struct evbuffer_chain* chain; } ;
struct evbuffer_ptr {scalar_t__ pos; TYPE_1__ internal_; } ;
struct evbuffer_chain {unsigned char* buffer; int misalign; scalar_t__ off; struct evbuffer_chain* next; } ;
struct evbuffer {struct evbuffer_chain* first; } ;
typedef int pos ;
typedef scalar_t__ ev_ssize_t ;


 int EVBUFFER_LOCK (struct evbuffer*) ;
 int EVBUFFER_UNLOCK (struct evbuffer*) ;
 size_t EV_SSIZE_MAX ;
 int PTR_NOT_FOUND (struct evbuffer_ptr*) ;
 int evbuffer_ptr_memcmp (struct evbuffer*,struct evbuffer_ptr*,char const*,size_t) ;
 unsigned char* memchr (unsigned char const*,char,scalar_t__) ;
 int memcpy (struct evbuffer_ptr*,struct evbuffer_ptr const*,int) ;

struct evbuffer_ptr
evbuffer_search_range(struct evbuffer *buffer, const char *what, size_t len, const struct evbuffer_ptr *start, const struct evbuffer_ptr *end)
{
 struct evbuffer_ptr pos;
 struct evbuffer_chain *chain, *last_chain = ((void*)0);
 const unsigned char *p;
 char first;

 EVBUFFER_LOCK(buffer);

 if (start) {
  memcpy(&pos, start, sizeof(pos));
  chain = pos.internal_.chain;
 } else {
  pos.pos = 0;
  chain = pos.internal_.chain = buffer->first;
  pos.internal_.pos_in_chain = 0;
 }

 if (end)
  last_chain = end->internal_.chain;

 if (!len || len > EV_SSIZE_MAX)
  goto done;

 first = what[0];

 while (chain) {
  const unsigned char *start_at =
      chain->buffer + chain->misalign +
      pos.internal_.pos_in_chain;
  p = memchr(start_at, first,
      chain->off - pos.internal_.pos_in_chain);
  if (p) {
   pos.pos += p - start_at;
   pos.internal_.pos_in_chain += p - start_at;
   if (!evbuffer_ptr_memcmp(buffer, &pos, what, len)) {
    if (end && pos.pos + (ev_ssize_t)len > end->pos)
     goto not_found;
    else
     goto done;
   }
   ++pos.pos;
   ++pos.internal_.pos_in_chain;
   if (pos.internal_.pos_in_chain == chain->off) {
    chain = pos.internal_.chain = chain->next;
    pos.internal_.pos_in_chain = 0;
   }
  } else {
   if (chain == last_chain)
    goto not_found;
   pos.pos += chain->off - pos.internal_.pos_in_chain;
   chain = pos.internal_.chain = chain->next;
   pos.internal_.pos_in_chain = 0;
  }
 }

not_found:
 PTR_NOT_FOUND(&pos);
done:
 EVBUFFER_UNLOCK(buffer);
 return pos;
}
