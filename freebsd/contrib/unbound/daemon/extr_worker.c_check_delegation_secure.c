
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; size_t rrset_count; TYPE_2__** rrsets; } ;
struct packed_rrset_data {int security; } ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ entry; } ;


 int sec_status_secure ;
 int sec_status_unchecked ;

__attribute__((used)) static enum sec_status
check_delegation_secure(struct reply_info *rep)
{

 size_t i;
 enum sec_status sec = sec_status_secure;
 enum sec_status s;
 size_t num = rep->an_numrrsets + rep->ns_numrrsets;

 for(i=0; i<num; i++) {
  s = ((struct packed_rrset_data*)rep->rrsets[i]->entry.data)
   ->security;
  if(s < sec)
   sec = s;
 }

 for(i=num; i<rep->rrset_count; i++) {
  s = ((struct packed_rrset_data*)rep->rrsets[i]->entry.data)
   ->security;
  if(s == sec_status_unchecked)
   return s;
 }
 return sec;
}
