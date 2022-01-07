
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {int* rr_len; scalar_t__* rr_data; scalar_t__ count; } ;
typedef int i ;


 int log_assert (int ) ;
 int memmove (int *,scalar_t__,int) ;
 int ntohs (int ) ;

__attribute__((used)) static size_t
nsec3_get_iter(struct ub_packed_rrset_key* rrset, int r)
{
 uint16_t i;
        struct packed_rrset_data* d = (struct packed_rrset_data*)
         rrset->entry.data;
 log_assert(d && r < (int)d->count);
 if(d->rr_len[r] < 2+4)
  return 0;
 memmove(&i, d->rr_data[r]+2+2, sizeof(i));
 i = ntohs(i);
 return (size_t)i;
}
