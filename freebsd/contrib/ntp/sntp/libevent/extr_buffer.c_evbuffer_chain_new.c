
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {size_t buffer_len; int refcnt; int buffer; } ;


 int EVBUFFER_CHAIN_EXTRA (int ,struct evbuffer_chain*) ;
 int EVBUFFER_CHAIN_MAX ;
 size_t EVBUFFER_CHAIN_SIZE ;
 size_t MIN_BUFFER_SIZE ;
 int memset (struct evbuffer_chain*,int ,size_t) ;
 struct evbuffer_chain* mm_malloc (size_t) ;
 int u_char ;

__attribute__((used)) static struct evbuffer_chain *
evbuffer_chain_new(size_t size)
{
 struct evbuffer_chain *chain;
 size_t to_alloc;

 if (size > EVBUFFER_CHAIN_MAX - EVBUFFER_CHAIN_SIZE)
  return (((void*)0));

 size += EVBUFFER_CHAIN_SIZE;


 if (size < EVBUFFER_CHAIN_MAX / 2) {
  to_alloc = MIN_BUFFER_SIZE;
  while (to_alloc < size) {
   to_alloc <<= 1;
  }
 } else {
  to_alloc = size;
 }


 if ((chain = mm_malloc(to_alloc)) == ((void*)0))
  return (((void*)0));

 memset(chain, 0, EVBUFFER_CHAIN_SIZE);

 chain->buffer_len = to_alloc - EVBUFFER_CHAIN_SIZE;




 chain->buffer = EVBUFFER_CHAIN_EXTRA(u_char, chain);

 chain->refcnt = 1;

 return (chain);
}
