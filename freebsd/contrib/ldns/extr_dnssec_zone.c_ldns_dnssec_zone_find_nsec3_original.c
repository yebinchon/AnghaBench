
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ldns_rr ;
typedef int ldns_rdf ;
typedef int ldns_rbnode_t ;
struct TYPE_4__ {int * hashed_names; int _nsec3params; } ;
typedef TYPE_1__ ldns_dnssec_zone ;


 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 int * ldns_dname_label (int ,int ) ;
 int ldns_dnssec_zone_hashed_names_from_nsec3 (TYPE_1__*,int *) ;
 int * ldns_rbtree_search (int *,int *) ;
 int ldns_rdf_deep_free (int *) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int ldns_rr_owner (int *) ;

__attribute__((used)) static ldns_rbnode_t *
ldns_dnssec_zone_find_nsec3_original(ldns_dnssec_zone *zone, ldns_rr *rr) {
 ldns_rdf *hashed_name;

 hashed_name = ldns_dname_label(ldns_rr_owner(rr), 0);
 if (hashed_name == ((void*)0)) {
  return ((void*)0);
 }
 if (ldns_rr_get_type(rr) == LDNS_RR_TYPE_NSEC3 && ! zone->_nsec3params){

  ldns_dnssec_zone_hashed_names_from_nsec3(zone, rr);
 }
 if (zone->hashed_names == ((void*)0)) {
  ldns_rdf_deep_free(hashed_name);
  return ((void*)0);
 }
 return ldns_rbtree_search(zone->hashed_names, hashed_name);
}
