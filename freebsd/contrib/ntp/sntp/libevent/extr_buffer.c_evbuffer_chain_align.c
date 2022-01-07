
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {int flags; scalar_t__ misalign; int off; scalar_t__ buffer; } ;


 int EVBUFFER_IMMUTABLE ;
 int EVBUFFER_MEM_PINNED_ANY ;
 int EVUTIL_ASSERT (int) ;
 int memmove (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void
evbuffer_chain_align(struct evbuffer_chain *chain)
{
 EVUTIL_ASSERT(!(chain->flags & EVBUFFER_IMMUTABLE));
 EVUTIL_ASSERT(!(chain->flags & EVBUFFER_MEM_PINNED_ANY));
 memmove(chain->buffer, chain->buffer + chain->misalign, chain->off);
 chain->misalign = 0;
}
