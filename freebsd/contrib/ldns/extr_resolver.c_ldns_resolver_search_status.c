
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr_type ;
typedef int ldns_rr_class ;
typedef int ldns_resolver ;
struct TYPE_10__ {int member_0; void* member_2; int member_1; } ;
typedef TYPE_1__ const ldns_rdf ;
typedef int ldns_pkt ;


 scalar_t__ LDNS_RCODE_NOERROR ;
 int LDNS_RDF_TYPE_DNAME ;
 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ldns_dname_absolute (TYPE_1__ const*) ;
 TYPE_1__ const* ldns_dname_cat_clone (TYPE_1__ const*,TYPE_1__ const*) ;
 int ldns_pkt_free (int *) ;
 scalar_t__ ldns_pkt_get_rcode (int *) ;
 int ldns_rdf_free (TYPE_1__ const*) ;
 scalar_t__ ldns_resolver_dnsrch (int *) ;
 scalar_t__ ldns_resolver_query_status (int **,int *,TYPE_1__ const*,int ,int ,int ) ;
 TYPE_1__ const** ldns_resolver_searchlist (int *) ;
 size_t ldns_resolver_searchlist_count (int *) ;

ldns_status
ldns_resolver_search_status(ldns_pkt** pkt,
  ldns_resolver *r, const ldns_rdf *name,
  ldns_rr_type t, ldns_rr_class c, uint16_t flags)
{
 ldns_rdf *new_name;
 ldns_rdf **search_list;
 size_t i;
 ldns_status s = LDNS_STATUS_OK;
 ldns_rdf root_dname = { 1, LDNS_RDF_TYPE_DNAME, (void *)"" };

 if (ldns_dname_absolute(name)) {

  return ldns_resolver_query_status(pkt, r, name, t, c, flags);
 } else if (ldns_resolver_dnsrch(r)) {
  search_list = ldns_resolver_searchlist(r);
  for (i = 0; i <= ldns_resolver_searchlist_count(r); i++) {
   if (i == ldns_resolver_searchlist_count(r)) {
    new_name = ldns_dname_cat_clone(name,
      &root_dname);
   } else {
    new_name = ldns_dname_cat_clone(name,
      search_list[i]);
   }

   s = ldns_resolver_query_status(pkt, r,
     new_name, t, c, flags);
   ldns_rdf_free(new_name);
   if (pkt && *pkt) {
    if (s == LDNS_STATUS_OK &&
      ldns_pkt_get_rcode(*pkt) ==
      LDNS_RCODE_NOERROR) {

     return LDNS_STATUS_OK;
    }
    ldns_pkt_free(*pkt);
    *pkt = ((void*)0);
   }
  }
 }
 return s;
}
