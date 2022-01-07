
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; struct ub_packed_rrset_key** rrsets; } ;


 scalar_t__ LDNS_RR_TYPE_SOA ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static struct ub_packed_rrset_key* reply_find_soa(struct reply_info* rep)
{
 size_t i;
 for(i=rep->an_numrrsets; i< rep->an_numrrsets+rep->ns_numrrsets; i++){
  if(ntohs(rep->rrsets[i]->rk.type) == LDNS_RR_TYPE_SOA)
   return rep->rrsets[i];
 }
 return ((void*)0);
}
