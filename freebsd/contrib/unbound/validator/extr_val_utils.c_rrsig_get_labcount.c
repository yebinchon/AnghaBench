
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct packed_rrset_data {int* rr_len; int ** rr_data; } ;



__attribute__((used)) static uint8_t
rrsig_get_labcount(struct packed_rrset_data* d, size_t sig)
{
 if(d->rr_len[sig] < 2+4)
  return 0;
 return d->rr_data[sig][2+3];
}
