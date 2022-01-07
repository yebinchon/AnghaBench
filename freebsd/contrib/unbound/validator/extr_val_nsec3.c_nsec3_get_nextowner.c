
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {int* rr_len; scalar_t__** rr_data; scalar_t__ count; } ;


 int log_assert (int ) ;

int
nsec3_get_nextowner(struct ub_packed_rrset_key* rrset, int r,
 uint8_t** next, size_t* nextlen)
{
 size_t saltlen;
        struct packed_rrset_data* d = (struct packed_rrset_data*)
         rrset->entry.data;
 log_assert(d && r < (int)d->count);
 if(d->rr_len[r] < 2+5) {
  *next = 0;
  *nextlen = 0;
  return 0;
 }
 saltlen = (size_t)d->rr_data[r][2+4];
 if(d->rr_len[r] < 2+5+saltlen+1) {
  *next = 0;
  *nextlen = 0;
  return 0;
 }
 *nextlen = (size_t)d->rr_data[r][2+5+saltlen];
 if(d->rr_len[r] < 2+5+saltlen+1+*nextlen) {
  *next = 0;
  *nextlen = 0;
  return 0;
 }
 *next = d->rr_data[r]+2+5+saltlen+1;
 return 1;
}
