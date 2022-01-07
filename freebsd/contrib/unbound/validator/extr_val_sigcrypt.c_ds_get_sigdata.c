
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;


 int rrset_get_rdata (struct ub_packed_rrset_key*,size_t,int **,size_t*) ;

__attribute__((used)) static void
ds_get_sigdata(struct ub_packed_rrset_key* k, size_t idx, uint8_t** digest,
        size_t* len)
{
 uint8_t* rdata;
 size_t rdlen;
 rrset_get_rdata(k, idx, &rdata, &rdlen);
 if(rdlen < 2+5) {
  *digest = ((void*)0);
  *len = 0;
  return;
 }
 *digest = rdata + 2 + 4;
 *len = rdlen - 2 - 4;
}
