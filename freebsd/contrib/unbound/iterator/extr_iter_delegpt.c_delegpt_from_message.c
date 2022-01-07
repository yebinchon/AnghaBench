
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct regional {int dummy; } ;
struct dns_msg {TYPE_2__* rep; } ;
struct delegpt {int has_parent_side_NS; } ;
struct TYPE_4__ {size_t an_numrrsets; size_t ns_numrrsets; size_t rrset_count; struct ub_packed_rrset_key** rrsets; } ;


 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 int delegpt_add_rrset_A (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int ) ;
 int delegpt_add_rrset_AAAA (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int ) ;
 struct delegpt* delegpt_create (struct regional*) ;
 int delegpt_rrset_add_ns (struct delegpt*,struct regional*,struct ub_packed_rrset_key*,int ) ;
 int delegpt_set_name (struct delegpt*,struct regional*,int ) ;
 struct ub_packed_rrset_key* find_NS (TYPE_2__*,size_t,size_t) ;
 scalar_t__ ntohs (int ) ;

struct delegpt*
delegpt_from_message(struct dns_msg* msg, struct regional* region)
{
 struct ub_packed_rrset_key* ns_rrset = ((void*)0);
 struct delegpt* dp;
 size_t i;

 ns_rrset = find_NS(msg->rep, msg->rep->an_numrrsets,
  msg->rep->an_numrrsets+msg->rep->ns_numrrsets);



 if(!ns_rrset)
  ns_rrset = find_NS(msg->rep, 0, msg->rep->an_numrrsets);




 if(!ns_rrset)
  return ((void*)0);


 dp = delegpt_create(region);
 if(!dp)
  return ((void*)0);
 dp->has_parent_side_NS = 1;
 if(!delegpt_set_name(dp, region, ns_rrset->rk.dname))
  return ((void*)0);
 if(!delegpt_rrset_add_ns(dp, region, ns_rrset, 0))
  return ((void*)0);


 for(i=0; i<msg->rep->rrset_count; i++) {
  struct ub_packed_rrset_key* s = msg->rep->rrsets[i];

  if(msg->rep->an_numrrsets <= i &&
   i < (msg->rep->an_numrrsets+msg->rep->ns_numrrsets))
   continue;

  if(ntohs(s->rk.type) == LDNS_RR_TYPE_A) {
   if(!delegpt_add_rrset_A(dp, region, s, 0))
    return ((void*)0);
  } else if(ntohs(s->rk.type) == LDNS_RR_TYPE_AAAA) {
   if(!delegpt_add_rrset_AAAA(dp, region, s, 0))
    return ((void*)0);
  }
 }
 return dp;
}
