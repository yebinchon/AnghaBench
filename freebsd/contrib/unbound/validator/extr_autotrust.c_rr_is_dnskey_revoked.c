
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int LDNS_KEY_REVOKE_KEY ;
 int dnskey_flags (int ,int *,size_t) ;

__attribute__((used)) static int
rr_is_dnskey_revoked(uint16_t t, uint8_t* rdata, size_t len)
{
 return (dnskey_flags(t, rdata, len)&LDNS_KEY_REVOKE_KEY);
}
