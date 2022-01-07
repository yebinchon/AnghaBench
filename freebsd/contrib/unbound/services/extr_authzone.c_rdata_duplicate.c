
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct packed_rrset_data {size_t count; size_t rrsig_count; size_t* rr_len; int * rr_data; } ;


 scalar_t__ memcmp (int ,int *,size_t) ;

__attribute__((used)) static int
rdata_duplicate(struct packed_rrset_data* d, uint8_t* rdata, size_t len)
{
 size_t i;
 for(i=0; i<d->count + d->rrsig_count; i++) {
  if(d->rr_len[i] != len)
   continue;
  if(memcmp(d->rr_data[i], rdata, len) == 0)
   return 1;
 }
 return 0;
}
