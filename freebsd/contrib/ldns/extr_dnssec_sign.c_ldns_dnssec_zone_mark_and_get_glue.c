
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rdf ;
struct TYPE_10__ {scalar_t__ data; } ;
typedef TYPE_1__ ldns_rbnode_t ;
struct TYPE_11__ {int names; } ;
typedef TYPE_2__ ldns_dnssec_zone ;
struct TYPE_12__ {int is_glue; int rrsets; } ;
typedef TYPE_3__ ldns_dnssec_name ;


 TYPE_1__* LDNS_RBTREE_NULL ;
 int LDNS_RR_TYPE_DNAME ;
 int LDNS_RR_TYPE_NS ;
 int LDNS_RR_TYPE_SOA ;
 scalar_t__ LDNS_STATUS_NULL ;
 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ldns_dname_is_subdomain (int *,int *) ;
 scalar_t__ ldns_dnssec_addresses_on_glue_list (int ,int *) ;
 int * ldns_dnssec_name_name (TYPE_3__*) ;
 scalar_t__ ldns_dnssec_rrsets_contains_type (int ,int ) ;
 TYPE_1__* ldns_rbtree_first (int ) ;
 TYPE_1__* ldns_rbtree_next (TYPE_1__*) ;

ldns_status
ldns_dnssec_zone_mark_and_get_glue(ldns_dnssec_zone *zone,
 ldns_rr_list *glue_list)
{
 ldns_rbnode_t *node;
 ldns_dnssec_name *name;
 ldns_rdf *owner;
 ldns_rdf *cut = ((void*)0);



 int below_delegation = -1;
 ldns_status s;

 if (!zone || !zone->names) {
  return LDNS_STATUS_NULL;
 }
 for (node = ldns_rbtree_first(zone->names);
   node != LDNS_RBTREE_NULL;
   node = ldns_rbtree_next(node)) {
  name = (ldns_dnssec_name *) node->data;
  owner = ldns_dnssec_name_name(name);

  if (cut) {
   if (ldns_dname_is_subdomain(owner, cut) &&
     !ldns_dnssec_rrsets_contains_type(
     name->rrsets, LDNS_RR_TYPE_SOA)) {

    if (below_delegation && glue_list) {
     s = ldns_dnssec_addresses_on_glue_list(
      name->rrsets, glue_list);
     if (s != LDNS_STATUS_OK) {
      return s;
     }
    }
    name->is_glue = 1;
    continue;
   } else {
    cut = ((void*)0);
   }
  }





  if (ldns_dnssec_rrsets_contains_type(
    name->rrsets, LDNS_RR_TYPE_NS)
       && !ldns_dnssec_rrsets_contains_type(
    name->rrsets, LDNS_RR_TYPE_SOA)) {
   cut = owner;
   below_delegation = 1;
   if (glue_list) {
    s = ldns_dnssec_addresses_on_glue_list(
     name->rrsets, glue_list);
    if (s != LDNS_STATUS_OK) {
     return s;
    }
   }
  } else if (ldns_dnssec_rrsets_contains_type(
    name->rrsets, LDNS_RR_TYPE_DNAME)) {
   cut = owner;
   below_delegation = 0;
  }
 }
 return LDNS_STATUS_OK;
}
