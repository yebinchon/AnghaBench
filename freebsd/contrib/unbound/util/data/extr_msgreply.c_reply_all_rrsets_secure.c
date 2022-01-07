
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct reply_info {size_t rrset_count; TYPE_2__** rrsets; } ;
struct packed_rrset_data {scalar_t__ security; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ entry; } ;


 scalar_t__ sec_status_secure ;

int
reply_all_rrsets_secure(struct reply_info* rep)
{
 size_t i;
 for(i=0; i<rep->rrset_count; i++) {
  if( ((struct packed_rrset_data*)rep->rrsets[i]->entry.data)
   ->security != sec_status_secure )
  return 0;
 }
 return 1;
}
