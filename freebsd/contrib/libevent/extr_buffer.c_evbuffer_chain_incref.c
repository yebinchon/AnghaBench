
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {int refcnt; } ;



__attribute__((used)) static inline void
evbuffer_chain_incref(struct evbuffer_chain *chain)
{
    ++chain->refcnt;
}
