
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {scalar_t__ count; int* rr_len; int ** rr_data; } ;


 size_t dname_valid (int *,int) ;

__attribute__((used)) static int
nsec_get_next(struct ub_packed_rrset_key* nsec, uint8_t** nm, size_t* ln)
{
 struct packed_rrset_data* d = (struct packed_rrset_data*)nsec->
  entry.data;
 if(!d || d->count == 0 || d->rr_len[0] < 2+1) {
  *nm = 0;
  *ln = 0;
  return 0;
 }
 *nm = d->rr_data[0]+2;
 *ln = dname_valid(*nm, d->rr_len[0]-2);
 if(!*ln) {
  *nm = 0;
  *ln = 0;
  return 0;
 }
 return 1;
}
