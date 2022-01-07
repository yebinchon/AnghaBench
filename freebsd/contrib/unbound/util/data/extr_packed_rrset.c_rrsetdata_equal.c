
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_rrset_data {size_t count; size_t rrsig_count; scalar_t__* rr_len; int * rr_data; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

int
rrsetdata_equal(struct packed_rrset_data* d1, struct packed_rrset_data* d2)
{
 size_t i;
 size_t total;
 if(d1->count != d2->count || d1->rrsig_count != d2->rrsig_count)
  return 0;
 total = d1->count + d1->rrsig_count;
 for(i=0; i<total; i++) {
  if(d1->rr_len[i] != d2->rr_len[i])
   return 0;
  if(memcmp(d1->rr_data[i], d2->rr_data[i], d1->rr_len[i]) != 0)
   return 0;
 }
 return 1;
}
