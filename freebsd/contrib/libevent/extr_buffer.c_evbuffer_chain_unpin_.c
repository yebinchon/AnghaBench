
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {unsigned int flags; } ;


 int EVBUFFER_DANGLING ;
 int EVUTIL_ASSERT (int) ;
 int evbuffer_chain_free (struct evbuffer_chain*) ;

void
evbuffer_chain_unpin_(struct evbuffer_chain *chain, unsigned flag)
{
 EVUTIL_ASSERT((chain->flags & flag) != 0);
 chain->flags &= ~flag;
 if (chain->flags & EVBUFFER_DANGLING)
  evbuffer_chain_free(chain);
}
