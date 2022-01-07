
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rr_class ;
typedef int ldns_resolver ;
typedef scalar_t__ ldns_rdf_type ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RDF_TYPE_A ;
 scalar_t__ LDNS_RDF_TYPE_AAAA ;
 scalar_t__ LDNS_RDF_TYPE_DNAME ;
 scalar_t__ LDNS_STATUS_OK ;
 int * ldns_get_rr_list_addr_by_name (int *,int const*,int ,int ) ;
 int * ldns_get_rr_list_name_by_addr (int *,int const*,int ,int ) ;
 scalar_t__ ldns_rdf_get_type (int const*) ;
 int ldns_resolver_deep_free (int *) ;
 scalar_t__ ldns_resolver_new_frm_file (int **,int *) ;
 scalar_t__ ldns_rr_list_rr_count (int *) ;

uint16_t
ldns_getaddrinfo(ldns_resolver *res, const ldns_rdf *node,
  ldns_rr_class c, ldns_rr_list **ret)
{
 ldns_rdf_type t;
 uint16_t names_found;
 ldns_resolver *r;
 ldns_status s;

 t = ldns_rdf_get_type(node);
 names_found = 0;
 r = res;

 if (res == ((void*)0)) {

  s = ldns_resolver_new_frm_file(&r, ((void*)0));
  if (s != LDNS_STATUS_OK) {
   return 0;
  }
 }

 if (t == LDNS_RDF_TYPE_DNAME) {

  *ret = ldns_get_rr_list_addr_by_name(r, node, c, 0);
  names_found = ldns_rr_list_rr_count(*ret);
 }

 if (t == LDNS_RDF_TYPE_A || t == LDNS_RDF_TYPE_AAAA) {

  *ret = ldns_get_rr_list_name_by_addr(r, node, c, 0);
  names_found = ldns_rr_list_rr_count(*ret);
 }

 if (res == ((void*)0)) {
  ldns_resolver_deep_free(r);
 }

 return names_found;
}
