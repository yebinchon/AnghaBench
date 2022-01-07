
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; struct ub_packed_rrset_key* key; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct reply_info {size_t rrset_count; struct ub_packed_rrset_key** rrsets; } ;
struct regional {int dummy; } ;
struct alloc_cache {int dummy; } ;


 struct ub_packed_rrset_key* alloc_special_obtain (struct alloc_cache*) ;
 int memset (struct ub_packed_rrset_key*,int ,int) ;
 scalar_t__ regional_alloc (struct regional*,int) ;

int
reply_info_alloc_rrset_keys(struct reply_info* rep, struct alloc_cache* alloc,
 struct regional* region)
{
 size_t i;
 for(i=0; i<rep->rrset_count; i++) {
  if(region) {
   rep->rrsets[i] = (struct ub_packed_rrset_key*)
    regional_alloc(region,
    sizeof(struct ub_packed_rrset_key));
   if(rep->rrsets[i]) {
    memset(rep->rrsets[i], 0,
     sizeof(struct ub_packed_rrset_key));
    rep->rrsets[i]->entry.key = rep->rrsets[i];
   }
  }
  else rep->rrsets[i] = alloc_special_obtain(alloc);
  if(!rep->rrsets[i])
   return 0;
  rep->rrsets[i]->entry.data = ((void*)0);
 }
 return 1;
}
