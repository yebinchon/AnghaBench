
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int ldns_rdf ;


 int LDNS_FREE (int *) ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_set_rdf (int *,int *,int ) ;

bool
ldns_rr_a_set_address(ldns_rr *r, ldns_rdf *f)
{

 ldns_rdf *pop;
 if (!r || (ldns_rr_get_type(r) != LDNS_RR_TYPE_A &&
   ldns_rr_get_type(r) != LDNS_RR_TYPE_AAAA)) {
  return 0;
 }
 pop = ldns_rr_set_rdf(r, f, 0);
 if (pop) {
  LDNS_FREE(pop);
  return 1;
 } else {
  return 0;
 }
}
