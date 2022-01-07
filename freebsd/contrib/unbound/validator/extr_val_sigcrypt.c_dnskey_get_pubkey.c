
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;


 int rrset_get_rdata (struct ub_packed_rrset_key*,size_t,int **,size_t*) ;

__attribute__((used)) static void
dnskey_get_pubkey(struct ub_packed_rrset_key* k, size_t idx,
 unsigned char** pk, unsigned int* pklen)
{
 uint8_t* rdata;
 size_t len;
 rrset_get_rdata(k, idx, &rdata, &len);
 if(len < 2+5) {
  *pk = ((void*)0);
  *pklen = 0;
  return;
 }
 *pk = (unsigned char*)rdata+2+4;
 *pklen = (unsigned)len-2-4;
}
