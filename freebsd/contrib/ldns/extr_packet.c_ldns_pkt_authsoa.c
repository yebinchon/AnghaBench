
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_class ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 int LDNS_RDF_TYPE_INT32 ;
 int LDNS_RR_TYPE_SOA ;
 scalar_t__ LDNS_STATUS_OK ;
 int * ldns_native2rdf_int32 (int ,int ) ;
 int * ldns_rdf_clone (int const*) ;
 int ldns_rr_free (int *) ;
 int * ldns_rr_new () ;
 int ldns_rr_push_rdf (int *,int *) ;
 int ldns_rr_set_class (int *,int ) ;
 int ldns_rr_set_owner (int *,int *) ;
 int ldns_rr_set_question (int *,int) ;
 int ldns_rr_set_type (int *,int ) ;
 scalar_t__ ldns_str2rdf_dname (int **,char*) ;

__attribute__((used)) static ldns_rr*
ldns_pkt_authsoa(const ldns_rdf* rr_name, ldns_rr_class rr_class)
{
 ldns_rr* soa_rr = ldns_rr_new();
 ldns_rdf *owner_rdf;
 ldns_rdf *mname_rdf;
 ldns_rdf *rname_rdf;
 ldns_rdf *serial_rdf;
 ldns_rdf *refresh_rdf;
 ldns_rdf *retry_rdf;
 ldns_rdf *expire_rdf;
 ldns_rdf *minimum_rdf;

 if (!soa_rr) {
  return ((void*)0);
 }
 owner_rdf = ldns_rdf_clone(rr_name);
 if (!owner_rdf) {
  ldns_rr_free(soa_rr);
  return ((void*)0);
 }

 ldns_rr_set_owner(soa_rr, owner_rdf);
 ldns_rr_set_type(soa_rr, LDNS_RR_TYPE_SOA);
 ldns_rr_set_class(soa_rr, rr_class);
 ldns_rr_set_question(soa_rr, 0);

 if (ldns_str2rdf_dname(&mname_rdf, ".") != LDNS_STATUS_OK) {
  ldns_rr_free(soa_rr);
  return ((void*)0);
 } else {
  ldns_rr_push_rdf(soa_rr, mname_rdf);
 }
 if (ldns_str2rdf_dname(&rname_rdf, ".") != LDNS_STATUS_OK) {
  ldns_rr_free(soa_rr);
  return ((void*)0);
 } else {
  ldns_rr_push_rdf(soa_rr, rname_rdf);
 }
 serial_rdf = ldns_native2rdf_int32(LDNS_RDF_TYPE_INT32, 0);
 if (!serial_rdf) {
  ldns_rr_free(soa_rr);
  return ((void*)0);
 } else {
  ldns_rr_push_rdf(soa_rr, serial_rdf);
 }
 refresh_rdf = ldns_native2rdf_int32(LDNS_RDF_TYPE_INT32, 0);
 if (!refresh_rdf) {
  ldns_rr_free(soa_rr);
  return ((void*)0);
 } else {
  ldns_rr_push_rdf(soa_rr, refresh_rdf);
 }
 retry_rdf = ldns_native2rdf_int32(LDNS_RDF_TYPE_INT32, 0);
 if (!retry_rdf) {
  ldns_rr_free(soa_rr);
  return ((void*)0);
 } else {
  ldns_rr_push_rdf(soa_rr, retry_rdf);
 }
 expire_rdf = ldns_native2rdf_int32(LDNS_RDF_TYPE_INT32, 0);
 if (!expire_rdf) {
  ldns_rr_free(soa_rr);
  return ((void*)0);
 } else {
  ldns_rr_push_rdf(soa_rr, expire_rdf);
 }
 minimum_rdf = ldns_native2rdf_int32(LDNS_RDF_TYPE_INT32, 0);
 if (!minimum_rdf) {
  ldns_rr_free(soa_rr);
  return ((void*)0);
 } else {
  ldns_rr_push_rdf(soa_rr, minimum_rdf);
 }
 return soa_rr;
}
