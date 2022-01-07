
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ub_packed_rrset_key {int dummy; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; size_t rrset_count; int ar_numrrsets; TYPE_2__** rrsets; } ;
struct packed_rrset_data {int security; } ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_5__ {TYPE_1__ entry; } ;


 int memmove (TYPE_2__**,TYPE_2__**,int) ;
 int sec_status_secure ;

__attribute__((used)) static void
deleg_remove_nonsecure_additional(struct reply_info* rep)
{

 size_t i;
 enum sec_status s;

 for(i = rep->an_numrrsets+rep->ns_numrrsets; i<rep->rrset_count; i++) {
  s = ((struct packed_rrset_data*)rep->rrsets[i]->entry.data)
   ->security;
  if(s != sec_status_secure) {
   memmove(rep->rrsets+i, rep->rrsets+i+1,
    sizeof(struct ub_packed_rrset_key*)*
    (rep->rrset_count - i - 1));
   rep->ar_numrrsets--;
   rep->rrset_count--;
   i--;
  }
 }
}
