
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int ldns_status ;
typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rr_list ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int LDNS_RDF_TYPE_TYPE ;
 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 int LDNS_SECTION_ANY_NOQUESTION ;
 int LDNS_STATUS_ERR ;
 scalar_t__ htons (scalar_t__) ;
 int * ldns_pkt_rr_list_by_name_and_type (int const*,int const*,scalar_t__,int ) ;
 int ldns_rdf_free (int *) ;
 int * ldns_rdf_new (int ,int,scalar_t__*) ;
 int ldns_rr_list_deep_free (int *) ;
 int * ldns_rr_list_subtype_by_rdf (int *,int *,int ) ;
 int ldns_verify_time (int *,int *,int const*,int ,int *) ;

ldns_status
ldns_pkt_verify_time(const ldns_pkt *p, ldns_rr_type t, const ldns_rdf *o,
  const ldns_rr_list *k, const ldns_rr_list *s,
  time_t check_time, ldns_rr_list *good_keys)
{
 ldns_rr_list *rrset;
 ldns_rr_list *sigs;
 ldns_rr_list *sigs_covered;
 ldns_rdf *rdf_t;
 ldns_rr_type t_netorder;

 if (!k) {
  return LDNS_STATUS_ERR;

 }

 if (t == LDNS_RR_TYPE_RRSIG) {

  return LDNS_STATUS_ERR;
 }

 if (s) {

  sigs = (ldns_rr_list *)s;
 } else {

  sigs = ldns_pkt_rr_list_by_name_and_type(p, o,
    LDNS_RR_TYPE_RRSIG,
    LDNS_SECTION_ANY_NOQUESTION);
  if (!sigs) {

   return LDNS_STATUS_ERR;

  }
 }




 t_netorder = htons(t);

 rdf_t = ldns_rdf_new(LDNS_RDF_TYPE_TYPE, 2, &t_netorder);

 sigs_covered = ldns_rr_list_subtype_by_rdf(sigs, rdf_t, 0);
 ldns_rdf_free(rdf_t);
 if (! sigs_covered) {
  if (! s) {
   ldns_rr_list_deep_free(sigs);
  }
  return LDNS_STATUS_ERR;
 }
 ldns_rr_list_deep_free(sigs_covered);

 rrset = ldns_pkt_rr_list_by_name_and_type(p, o, t,
   LDNS_SECTION_ANY_NOQUESTION);
 if (!rrset) {
  if (! s) {
   ldns_rr_list_deep_free(sigs);
  }
  return LDNS_STATUS_ERR;
 }
 return ldns_verify_time(rrset, sigs, k, check_time, good_keys);
}
