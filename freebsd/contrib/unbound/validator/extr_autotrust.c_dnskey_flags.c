
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 int memmove (scalar_t__*,int *,int) ;
 scalar_t__ ntohs (scalar_t__) ;

__attribute__((used)) static int
dnskey_flags(uint16_t t, uint8_t* rdata, size_t len)
{
 uint16_t f;
 if(t != LDNS_RR_TYPE_DNSKEY)
  return 0;
 if(len < 2)
  return 0;
 memmove(&f, rdata, 2);
 f = ntohs(f);
 return (int)f;
}
