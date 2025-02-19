
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int * time_t ;
struct regional {int dummy; } ;
struct packed_rrset_data {size_t* rr_len; int count; int ** rr_data; int ** rr_ttl; } ;


 int LOCALZONE_RRSET_COUNT_MAX ;
 int log_err (char*) ;
 int log_warn (char*,char const*,int) ;
 int memcpy (size_t*,size_t*,int) ;
 void* regional_alloc (struct regional*,int) ;
 int * regional_alloc_init (struct regional*,int *,size_t) ;

int
rrset_insert_rr(struct regional* region, struct packed_rrset_data* pd,
 uint8_t* rdata, size_t rdata_len, time_t ttl, const char* rrstr)
{
 size_t* oldlen = pd->rr_len;
 time_t* oldttl = pd->rr_ttl;
 uint8_t** olddata = pd->rr_data;


 if(pd->count > LOCALZONE_RRSET_COUNT_MAX) {
  log_warn("RRset '%s' has more than %d records, record ignored",
   rrstr, LOCALZONE_RRSET_COUNT_MAX);
  return 1;
 }
 pd->count++;
 pd->rr_len = regional_alloc(region, sizeof(*pd->rr_len)*pd->count);
 pd->rr_ttl = regional_alloc(region, sizeof(*pd->rr_ttl)*pd->count);
 pd->rr_data = regional_alloc(region, sizeof(*pd->rr_data)*pd->count);
 if(!pd->rr_len || !pd->rr_ttl || !pd->rr_data) {
  log_err("out of memory");
  return 0;
 }
 if(pd->count > 1) {
  memcpy(pd->rr_len+1, oldlen,
   sizeof(*pd->rr_len)*(pd->count-1));
  memcpy(pd->rr_ttl+1, oldttl,
   sizeof(*pd->rr_ttl)*(pd->count-1));
  memcpy(pd->rr_data+1, olddata,
   sizeof(*pd->rr_data)*(pd->count-1));
 }
 pd->rr_len[0] = rdata_len;
 pd->rr_ttl[0] = ttl;
 pd->rr_data[0] = regional_alloc_init(region, rdata, rdata_len);
 if(!pd->rr_data[0]) {
  log_err("out of memory");
  return 0;
 }
 return 1;
}
