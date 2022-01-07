
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_dnssec_rrs ;


 int ldns_dnssec_rrs_free_internal (int *,int) ;

void
ldns_dnssec_rrs_deep_free(ldns_dnssec_rrs *rrs)
{
 ldns_dnssec_rrs_free_internal(rrs, 1);
}
