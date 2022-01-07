
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct autr_ta {int dname_len; int rr_len; int rr; } ;


 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 int dnskey_compare_skip_revbit (int ,size_t,int *,size_t) ;
 int memcmp (int ,int *,size_t) ;
 int sldns_wirerr_get_rdata (int ,int ,int ) ;
 size_t sldns_wirerr_get_rdatalen (int ,int ,int ) ;
 scalar_t__ sldns_wirerr_get_type (int ,int ,int ) ;

__attribute__((used)) static int
ta_compare(struct autr_ta* a, uint16_t t, uint8_t* b, size_t b_len)
{
 if(!a) return -1;
 else if(!b) return -1;
 else if(sldns_wirerr_get_type(a->rr, a->rr_len, a->dname_len) != t)
  return (int)sldns_wirerr_get_type(a->rr, a->rr_len,
   a->dname_len) - (int)t;
 else if(t == LDNS_RR_TYPE_DNSKEY) {
  return dnskey_compare_skip_revbit(
   sldns_wirerr_get_rdata(a->rr, a->rr_len, a->dname_len),
   sldns_wirerr_get_rdatalen(a->rr, a->rr_len,
   a->dname_len), b, b_len);
 }
 else if(t == LDNS_RR_TYPE_DS) {
  if(sldns_wirerr_get_rdatalen(a->rr, a->rr_len, a->dname_len) !=
   b_len)
   return -1;
  return memcmp(sldns_wirerr_get_rdata(a->rr,
   a->rr_len, a->dname_len), b, b_len);
 }
 return -1;
}
