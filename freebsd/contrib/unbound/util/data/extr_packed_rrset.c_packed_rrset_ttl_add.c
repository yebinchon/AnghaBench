
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct packed_rrset_data {size_t count; size_t rrsig_count; int * rr_ttl; int ttl; } ;



void
packed_rrset_ttl_add(struct packed_rrset_data* data, time_t add)
{
 size_t i;
 size_t total = data->count + data->rrsig_count;
 data->ttl += add;
 for(i=0; i<total; i++)
  data->rr_ttl[i] += add;
}
