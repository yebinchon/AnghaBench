
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct reply_info {size_t rrset_count; struct ub_packed_rrset_key** rrsets; } ;


 int LDNS_RR_TYPE_NS ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static struct ub_packed_rrset_key*
reply_get_NS_rrset(struct reply_info* rep)
{
 size_t i;
 for(i=0; i<rep->rrset_count; i++) {
  if(rep->rrsets[i]->rk.type == htons(LDNS_RR_TYPE_NS)) {
   return rep->rrsets[i];
  }
 }
 return ((void*)0);
}
