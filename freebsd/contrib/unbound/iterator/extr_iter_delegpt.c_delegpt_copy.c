
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;
struct delegpt_ns {int done_pside6; int done_pside4; int got6; int got4; int resolved; int lame; int name; struct delegpt_ns* next; } ;
struct delegpt_addr {int tls_auth_name; int lame; int bogus; int addrlen; int addr; struct delegpt_addr* next_target; } ;
struct delegpt {struct delegpt_addr* target_list; struct delegpt_ns* nslist; int ssl_upstream; int has_parent_side_NS; int bogus; int name; } ;


 int delegpt_add_addr (struct delegpt*,struct regional*,int *,int ,int ,int ,int ) ;
 int delegpt_add_ns (struct delegpt*,struct regional*,int ,int ) ;
 struct delegpt* delegpt_create (struct regional*) ;
 int delegpt_set_name (struct delegpt*,struct regional*,int ) ;

struct delegpt* delegpt_copy(struct delegpt* dp, struct regional* region)
{
 struct delegpt* copy = delegpt_create(region);
 struct delegpt_ns* ns;
 struct delegpt_addr* a;
 if(!copy)
  return ((void*)0);
 if(!delegpt_set_name(copy, region, dp->name))
  return ((void*)0);
 copy->bogus = dp->bogus;
 copy->has_parent_side_NS = dp->has_parent_side_NS;
 copy->ssl_upstream = dp->ssl_upstream;
 for(ns = dp->nslist; ns; ns = ns->next) {
  if(!delegpt_add_ns(copy, region, ns->name, ns->lame))
   return ((void*)0);
  copy->nslist->resolved = ns->resolved;
  copy->nslist->got4 = ns->got4;
  copy->nslist->got6 = ns->got6;
  copy->nslist->done_pside4 = ns->done_pside4;
  copy->nslist->done_pside6 = ns->done_pside6;
 }
 for(a = dp->target_list; a; a = a->next_target) {
  if(!delegpt_add_addr(copy, region, &a->addr, a->addrlen,
   a->bogus, a->lame, a->tls_auth_name))
   return ((void*)0);
 }
 return copy;
}
