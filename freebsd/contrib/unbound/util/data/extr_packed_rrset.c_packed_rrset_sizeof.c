
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct packed_rrset_data {int rrsig_count; int count; int* rr_len; scalar_t__* rr_data; } ;


 int log_assert (int) ;

size_t
packed_rrset_sizeof(struct packed_rrset_data* d)
{
 size_t s;
 if(d->rrsig_count > 0) {
  s = ((uint8_t*)d->rr_data[d->count+d->rrsig_count-1] -
   (uint8_t*)d) + d->rr_len[d->count+d->rrsig_count-1];
 } else {
  log_assert(d->count > 0);
  s = ((uint8_t*)d->rr_data[d->count-1] - (uint8_t*)d) +
   d->rr_len[d->count-1];
 }
 return s;
}
