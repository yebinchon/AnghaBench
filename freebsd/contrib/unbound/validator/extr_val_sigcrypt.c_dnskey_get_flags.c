
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ub_packed_rrset_key {int dummy; } ;


 int memmove (int *,int *,int) ;
 int ntohs (int ) ;
 int rrset_get_rdata (struct ub_packed_rrset_key*,size_t,int **,size_t*) ;

uint16_t
dnskey_get_flags(struct ub_packed_rrset_key* k, size_t idx)
{
 uint8_t* rdata;
 size_t len;
 uint16_t f;
 rrset_get_rdata(k, idx, &rdata, &len);
 if(len < 2+2)
  return 0;
 memmove(&f, rdata+2, 2);
 f = ntohs(f);
 return f;
}
