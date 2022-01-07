
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int ldns_rdf ;


 int LDNS_RR_TYPE_DNSKEY ;
 int ldns_rr_set_function (int ,int *,int *,int ) ;

bool
ldns_rr_dnskey_set_flags(ldns_rr *r, ldns_rdf *f)
{
 return ldns_rr_set_function(LDNS_RR_TYPE_DNSKEY, r, f, 0);
}
