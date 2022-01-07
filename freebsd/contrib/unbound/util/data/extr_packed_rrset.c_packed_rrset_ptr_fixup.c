
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int time_t ;
struct packed_rrset_data {size_t count; size_t rrsig_count; size_t* rr_len; int ** rr_data; int * rr_ttl; } ;



void
packed_rrset_ptr_fixup(struct packed_rrset_data* data)
{
 size_t i;
 size_t total = data->count + data->rrsig_count;
 uint8_t* nextrdata;

 data->rr_len = (size_t*)((uint8_t*)data +
  sizeof(struct packed_rrset_data));
 data->rr_data = (uint8_t**)&(data->rr_len[total]);
 data->rr_ttl = (time_t*)&(data->rr_data[total]);
 nextrdata = (uint8_t*)&(data->rr_ttl[total]);
 for(i=0; i<total; i++) {
  data->rr_data[i] = nextrdata;
  nextrdata += data->rr_len[i];
 }
}
