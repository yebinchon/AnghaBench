
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_status ;
typedef int ldns_rr_class ;
typedef int ldns_rr ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int LDNS_RR_TYPE_IXFR ;
 scalar_t__ LDNS_STATUS_OK ;
 int * ldns_pkt_authsoa (int *,int ) ;
 int ldns_pkt_query_new_frm_str_internal (int **,char const*,int ,int ,int ,int *) ;
 int ldns_rdf_free (int *) ;
 scalar_t__ ldns_str2rdf_dname (int **,char const*) ;

ldns_status
ldns_pkt_ixfr_request_new_frm_str(ldns_pkt **p, const char *name,
 ldns_rr_class rr_class, uint16_t flags, ldns_rr *soa)
{
 ldns_rr* authsoa_rr = soa;
 if (!authsoa_rr) {
  ldns_rdf *name_rdf;
  if (ldns_str2rdf_dname(&name_rdf, name) == LDNS_STATUS_OK) {
   authsoa_rr = ldns_pkt_authsoa(name_rdf, rr_class);
  }
  ldns_rdf_free(name_rdf);
 }
 return ldns_pkt_query_new_frm_str_internal(p, name, LDNS_RR_TYPE_IXFR,
  rr_class, flags, authsoa_rr);
}
