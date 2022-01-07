
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {int* rr_len; int** rr_data; scalar_t__ count; } ;



 int log_assert (int ) ;

__attribute__((used)) static int
nsec3_known_algo(struct ub_packed_rrset_key* rrset, int r)
{
        struct packed_rrset_data* d = (struct packed_rrset_data*)
         rrset->entry.data;
 log_assert(d && r < (int)d->count);
 if(d->rr_len[r] < 2+1)
  return 0;
 switch(d->rr_data[r][2+0]) {
  case 128:
   return 1;
 }
 return 0;
}
