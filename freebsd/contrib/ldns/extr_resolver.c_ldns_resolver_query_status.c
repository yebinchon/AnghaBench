
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_status ;
typedef int ldns_rr_type ;
typedef int ldns_rr_class ;
typedef int ldns_resolver ;
typedef int const ldns_rdf ;
typedef int ldns_pkt ;


 int LDNS_STATUS_MEM_ERR ;
 int const* ldns_dname_cat_clone (int const*,int ) ;
 int ldns_rdf_free (int const*) ;
 int ldns_resolver_defnames (int *) ;
 int ldns_resolver_domain (int *) ;
 int ldns_resolver_send (int **,int *,int const*,int ,int ,int ) ;

ldns_status
ldns_resolver_query_status(ldns_pkt** pkt,
  ldns_resolver *r, const ldns_rdf *name,
  ldns_rr_type t, ldns_rr_class c, uint16_t flags)
{
 ldns_rdf *newname;
 ldns_status status;

 if (!ldns_resolver_defnames(r) || !ldns_resolver_domain(r)) {
  return ldns_resolver_send(pkt, r, name, t, c, flags);
 }

 newname = ldns_dname_cat_clone(name, ldns_resolver_domain(r));
 if (!newname) {
  return LDNS_STATUS_MEM_ERR;
 }
 status = ldns_resolver_send(pkt, r, newname, t, c, flags);
 ldns_rdf_free(newname);
 return status;
}
