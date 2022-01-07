
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_rr_list ;
typedef int ldns_rr_class ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int LDNS_RD ;
 scalar_t__ LDNS_RDF_TYPE_A ;
 scalar_t__ LDNS_RDF_TYPE_AAAA ;
 int LDNS_RR_TYPE_PTR ;
 int LDNS_SECTION_ANSWER ;
 int ldns_pkt_free (int *) ;
 int * ldns_pkt_rr_list_by_type (int *,int ,int ) ;
 int * ldns_rdf_address_reverse (int const*) ;
 int ldns_rdf_deep_free (int *) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;
 int * ldns_resolver_query (int *,int *,int ,int ,int) ;

ldns_rr_list *
ldns_get_rr_list_name_by_addr(ldns_resolver *res, const ldns_rdf *addr,
  ldns_rr_class c, uint16_t flags)
{
 ldns_pkt *pkt;
 ldns_rr_list *names;
 ldns_rdf *name;

 names = ((void*)0);

 if (!res || !addr) {
  return ((void*)0);
 }

 if (ldns_rdf_get_type(addr) != LDNS_RDF_TYPE_A &&
   ldns_rdf_get_type(addr) != LDNS_RDF_TYPE_AAAA) {
  return ((void*)0);
 }

 name = ldns_rdf_address_reverse(addr);


 pkt = ldns_resolver_query(res, name, LDNS_RR_TYPE_PTR, c, flags | LDNS_RD);
 ldns_rdf_deep_free(name);
 if (pkt) {

  names = ldns_pkt_rr_list_by_type(pkt,
    LDNS_RR_TYPE_PTR, LDNS_SECTION_ANSWER);
  ldns_pkt_free(pkt);
 }
 return names;
}
