
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int ldns_rdf ;


 int LDNS_RR_TYPE_RRSIG ;
 int ldns_rr_set_function (int ,int *,int *,int) ;

bool
ldns_rr_rrsig_set_expiration(ldns_rr *r, ldns_rdf *f)
{
 return ldns_rr_set_function(LDNS_RR_TYPE_RRSIG, r, f, 4);
}
