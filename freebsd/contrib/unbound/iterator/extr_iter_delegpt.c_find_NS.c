
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct reply_info {struct ub_packed_rrset_key** rrsets; } ;


 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static struct ub_packed_rrset_key*
find_NS(struct reply_info* rep, size_t from, size_t to)
{
 size_t i;
 for(i=from; i<to; i++) {
  if(ntohs(rep->rrsets[i]->rk.type) == LDNS_RR_TYPE_NS)
   return rep->rrsets[i];
 }
 return ((void*)0);
}
