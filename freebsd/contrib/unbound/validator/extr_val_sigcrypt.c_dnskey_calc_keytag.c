
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ub_packed_rrset_key {int dummy; } ;


 int rrset_get_rdata (struct ub_packed_rrset_key*,size_t,int **,size_t*) ;
 int sldns_calc_keytag_raw (int *,size_t) ;

uint16_t
dnskey_calc_keytag(struct ub_packed_rrset_key* dnskey_rrset, size_t dnskey_idx)
{
 uint8_t* data;
 size_t len;
 rrset_get_rdata(dnskey_rrset, dnskey_idx, &data, &len);

 return sldns_calc_keytag_raw(data+2, len-2);
}
