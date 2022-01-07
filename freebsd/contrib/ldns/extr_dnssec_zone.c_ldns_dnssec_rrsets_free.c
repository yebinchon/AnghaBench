
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_dnssec_rrsets ;


 int ldns_dnssec_rrsets_free_internal (int *,int ) ;

void
ldns_dnssec_rrsets_free(ldns_dnssec_rrsets *rrsets)
{
 ldns_dnssec_rrsets_free_internal(rrsets, 0);
}
