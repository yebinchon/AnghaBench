
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ time_t ;
struct TYPE_4__ {int dname_len; int rrset_class; int type; int * dname; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct packed_rrset_data {int* rr_len; size_t count; int ** rr_data; scalar_t__* rr_ttl; } ;


 int LDNS_RR_TYPE_RRSIG ;
 int log_assert (int ) ;
 int log_info (char*,int,char*) ;
 int memmove (int *,int *,int) ;
 int sldns_wire2str_rr_buf (int *,size_t,char*,size_t) ;
 int sldns_write_uint16 (int *,int ) ;
 int sldns_write_uint32 (int *,int ) ;

int packed_rr_to_string(struct ub_packed_rrset_key* rrset, size_t i,
 time_t now, char* dest, size_t dest_len)
{
 struct packed_rrset_data* d = (struct packed_rrset_data*)rrset->
  entry.data;
 uint8_t rr[65535];
 size_t rlen = rrset->rk.dname_len + 2 + 2 + 4 + d->rr_len[i];
 log_assert(dest_len > 0 && dest);
 if(rlen > dest_len) {
  dest[0] = 0;
  return 0;
 }
 memmove(rr, rrset->rk.dname, rrset->rk.dname_len);
 if(i < d->count)
  memmove(rr+rrset->rk.dname_len, &rrset->rk.type, 2);
 else sldns_write_uint16(rr+rrset->rk.dname_len, LDNS_RR_TYPE_RRSIG);
 memmove(rr+rrset->rk.dname_len+2, &rrset->rk.rrset_class, 2);
 sldns_write_uint32(rr+rrset->rk.dname_len+4,
  (uint32_t)(d->rr_ttl[i]-now));
 memmove(rr+rrset->rk.dname_len+8, d->rr_data[i], d->rr_len[i]);
 if(sldns_wire2str_rr_buf(rr, rlen, dest, dest_len) == -1) {
  log_info("rrbuf failure %d %s", (int)d->rr_len[i], dest);
  dest[0] = 0;
  return 0;
 }
 return 1;
}
