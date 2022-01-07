
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int ldns_rdf ;


 int LDNS_RR_TYPE_DNSKEY ;
 int * ldns_rr_function (int ,int const*,int) ;

ldns_rdf *
ldns_rr_dnskey_key(const ldns_rr *r)
{
 return ldns_rr_function(LDNS_RR_TYPE_DNSKEY, r, 3);
}
