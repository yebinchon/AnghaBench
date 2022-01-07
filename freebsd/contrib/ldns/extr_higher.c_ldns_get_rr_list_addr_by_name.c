
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ldns_rr_list ;
typedef int ldns_rr_class ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int LDNS_RD ;
 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 int LDNS_RESOLV_INETANY ;
 int LDNS_RR_TYPE_A ;
 int LDNS_RR_TYPE_AAAA ;
 int LDNS_SECTION_ANSWER ;
 int * ldns_get_rr_list_hosts_frm_file (int *) ;
 int ldns_pkt_free (int *) ;
 int * ldns_pkt_rr_list_by_type (int *,int ,int ) ;
 scalar_t__ ldns_rdf_compare (int const*,int ) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;
 int ldns_resolver_ip6 (int *) ;
 int * ldns_resolver_query (int *,int const*,int ,int ,int) ;
 int ldns_resolver_set_ip6 (int *,int ) ;
 int ldns_rr_clone (int ) ;
 int * ldns_rr_list_cat_clone (int *,int *) ;
 int * ldns_rr_list_clone (int *) ;
 int ldns_rr_list_deep_free (int *) ;
 int * ldns_rr_list_new () ;
 int ldns_rr_list_push_rr (int *,int ) ;
 int ldns_rr_list_rr (int *,size_t) ;
 size_t ldns_rr_list_rr_count (int *) ;
 int ldns_rr_owner (int ) ;

ldns_rr_list *
ldns_get_rr_list_addr_by_name(ldns_resolver *res, const ldns_rdf *name,
  ldns_rr_class c, uint16_t flags)
{
 ldns_pkt *pkt;
 ldns_rr_list *aaaa;
 ldns_rr_list *a;
 ldns_rr_list *result = ((void*)0);
 ldns_rr_list *hostsfilenames;
 size_t i;
 uint8_t ip6;

 a = ((void*)0);
 aaaa = ((void*)0);
 result = ((void*)0);

 if (!res) {
  return ((void*)0);
 }
 if (ldns_rdf_get_type(name) != LDNS_RDF_TYPE_DNAME) {
  return ((void*)0);
 }

 ip6 = ldns_resolver_ip6(res);


 ldns_resolver_set_ip6(res, LDNS_RESOLV_INETANY);

 hostsfilenames = ldns_get_rr_list_hosts_frm_file(((void*)0));
 for (i = 0; i < ldns_rr_list_rr_count(hostsfilenames); i++) {
  if (ldns_rdf_compare(name,
     ldns_rr_owner(ldns_rr_list_rr(hostsfilenames,
       i))) == 0) {
   if (!result) {
    result = ldns_rr_list_new();
   }
   ldns_rr_list_push_rr(result,
     ldns_rr_clone(ldns_rr_list_rr(hostsfilenames, i)));
  }
 }
 ldns_rr_list_deep_free(hostsfilenames);

 if (result) {
  return result;
 }


 pkt = ldns_resolver_query(res, name, LDNS_RR_TYPE_AAAA, c, flags | LDNS_RD);
 if (pkt) {

  aaaa = ldns_pkt_rr_list_by_type(pkt, LDNS_RR_TYPE_AAAA,
   LDNS_SECTION_ANSWER);
  ldns_pkt_free(pkt);
 }

 pkt = ldns_resolver_query(res, name, LDNS_RR_TYPE_A, c, flags | LDNS_RD);
 if (pkt) {

  a = ldns_pkt_rr_list_by_type(pkt, LDNS_RR_TYPE_A, LDNS_SECTION_ANSWER);
  ldns_pkt_free(pkt);
 }
 ldns_resolver_set_ip6(res, ip6);

 if (aaaa && a) {
  result = ldns_rr_list_cat_clone(aaaa, a);
  ldns_rr_list_deep_free(aaaa);
  ldns_rr_list_deep_free(a);
  return result;
 }

 if (aaaa) {
  result = ldns_rr_list_clone(aaaa);
 }

 if (a) {
  result = ldns_rr_list_clone(a);
 }

 ldns_rr_list_deep_free(aaaa);
 ldns_rr_list_deep_free(a);
 return result;
}
