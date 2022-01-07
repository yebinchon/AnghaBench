
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;


 int rrset_get_rdata (struct ub_packed_rrset_key*,size_t,scalar_t__**,size_t*) ;

__attribute__((used)) static int
dnskey_get_protocol(struct ub_packed_rrset_key* k, size_t idx)
{
 uint8_t* rdata;
 size_t len;
 rrset_get_rdata(k, idx, &rdata, &len);
 if(len < 2+4)
  return 0;
 return (int)rdata[2+2];
}
