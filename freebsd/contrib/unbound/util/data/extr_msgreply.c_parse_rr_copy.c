
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int time_t ;
struct rrset_parse {size_t rr_count; size_t rrsig_count; int section; struct rr_parse* rrsig_first; int type; struct rr_parse* rr_first; } ;
struct rr_parse {size_t size; struct rr_parse* next; } ;
struct packed_rrset_data {size_t count; size_t rrsig_count; size_t* rr_len; int * rr_ttl; int ** rr_data; int security; int trust; int ttl; } ;
typedef int sldns_buffer ;


 int LDNS_RR_TYPE_RRSIG ;
 int MAX_TTL ;
 int rdata_copy (int *,struct packed_rrset_data*,int *,struct rr_parse*,int *,int ,int ) ;
 int rrset_trust_none ;
 int sec_status_unchecked ;

__attribute__((used)) static int
parse_rr_copy(sldns_buffer* pkt, struct rrset_parse* pset,
 struct packed_rrset_data* data)
{
 size_t i;
 struct rr_parse* rr = pset->rr_first;
 uint8_t* nextrdata;
 size_t total = pset->rr_count + pset->rrsig_count;
 data->ttl = MAX_TTL;
 data->count = pset->rr_count;
 data->rrsig_count = pset->rrsig_count;
 data->trust = rrset_trust_none;
 data->security = sec_status_unchecked;

 data->rr_len = (size_t*)((uint8_t*)data +
  sizeof(struct packed_rrset_data));
 data->rr_data = (uint8_t**)&(data->rr_len[total]);
 data->rr_ttl = (time_t*)&(data->rr_data[total]);
 nextrdata = (uint8_t*)&(data->rr_ttl[total]);
 for(i=0; i<data->count; i++) {
  data->rr_len[i] = rr->size;
  data->rr_data[i] = nextrdata;
  nextrdata += rr->size;
  if(!rdata_copy(pkt, data, data->rr_data[i], rr,
   &data->rr_ttl[i], pset->type, pset->section))
   return 0;
  rr = rr->next;
 }

 rr = pset->rrsig_first;
 for(i=data->count; i<total; i++) {
  data->rr_len[i] = rr->size;
  data->rr_data[i] = nextrdata;
  nextrdata += rr->size;
  if(!rdata_copy(pkt, data, data->rr_data[i], rr,
   &data->rr_ttl[i], LDNS_RR_TYPE_RRSIG, pset->section))
   return 0;
  rr = rr->next;
 }
 return 1;
}
