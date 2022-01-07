
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trust_anchor {size_t numDNSKEY; int dnskey_rrset; } ;


 int dnskey_algo_is_supported (int ,size_t) ;

__attribute__((used)) static size_t
anchors_dnskey_unsupported(struct trust_anchor* ta)
{
 size_t i, num = 0;
 for(i=0; i<ta->numDNSKEY; i++) {
  if(!dnskey_algo_is_supported(ta->dnskey_rrset, i))
   num++;
 }
 return num;
}
