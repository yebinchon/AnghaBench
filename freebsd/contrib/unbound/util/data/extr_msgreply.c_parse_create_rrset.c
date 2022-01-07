
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int time_t ;
struct rrset_parse {int rr_count; int rrsig_count; int size; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {int dummy; } ;
typedef int sldns_buffer ;


 int RR_COUNT_MAX ;
 int free (struct packed_rrset_data*) ;
 struct packed_rrset_data* malloc (size_t) ;
 int parse_rr_copy (int *,struct rrset_parse*,struct packed_rrset_data*) ;
 struct packed_rrset_data* regional_alloc (struct regional*,size_t) ;

__attribute__((used)) static int
parse_create_rrset(sldns_buffer* pkt, struct rrset_parse* pset,
 struct packed_rrset_data** data, struct regional* region)
{

 size_t s;
 if(pset->rr_count > RR_COUNT_MAX || pset->rrsig_count > RR_COUNT_MAX ||
  pset->size > RR_COUNT_MAX)
  return 0;
 s = sizeof(struct packed_rrset_data) +
  (pset->rr_count + pset->rrsig_count) *
  (sizeof(size_t)+sizeof(uint8_t*)+sizeof(time_t)) +
  pset->size;
 if(region)
  *data = regional_alloc(region, s);
 else *data = malloc(s);
 if(!*data)
  return 0;

 if(!parse_rr_copy(pkt, pset, *data)) {
  if(!region) free(*data);
  return 0;
 }
 return 1;
}
