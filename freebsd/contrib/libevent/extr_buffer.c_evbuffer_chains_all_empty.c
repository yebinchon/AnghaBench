
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {scalar_t__ off; struct evbuffer_chain* next; } ;



__attribute__((used)) static int
evbuffer_chains_all_empty(struct evbuffer_chain *chain)
{
 for (; chain; chain = chain->next) {
  if (chain->off)
   return 0;
 }
 return 1;
}
