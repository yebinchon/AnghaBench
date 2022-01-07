
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {unsigned int flags; } ;


 int EVUTIL_ASSERT (int) ;

void
evbuffer_chain_pin_(struct evbuffer_chain *chain, unsigned flag)
{
 EVUTIL_ASSERT((chain->flags & flag) == 0);
 chain->flags |= flag;
}
