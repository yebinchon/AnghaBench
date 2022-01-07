
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ldns_rr ;
struct TYPE_9__ {scalar_t__ data; } ;
typedef TYPE_1__ ldns_rbnode_t ;
struct TYPE_10__ {int names; int * hashed_names; int * _nsec3params; } ;
typedef TYPE_2__ ldns_dnssec_zone ;
typedef int ldns_dnssec_name ;


 int LDNS_FREE (int *) ;
 TYPE_1__* LDNS_RBTREE_NULL ;
 int assert (int ) ;
 int ldns_dname_compare_v ;
 int ldns_dnssec_name_make_hashed_name (TYPE_2__*,int *,int *) ;
 int ldns_hashed_names_node_free ;
 int * ldns_rbtree_create (int ) ;
 TYPE_1__* ldns_rbtree_first (int ) ;
 TYPE_1__* ldns_rbtree_next (TYPE_1__*) ;
 int ldns_traverse_postorder (int *,int ,int *) ;

__attribute__((used)) static void
ldns_dnssec_zone_hashed_names_from_nsec3(
  ldns_dnssec_zone* zone, ldns_rr* nsec3rr)
{
 ldns_rbnode_t* current_node;
 ldns_dnssec_name* current_name;

 assert(zone != ((void*)0));
 assert(nsec3rr != ((void*)0));

 if (zone->hashed_names) {
  ldns_traverse_postorder(zone->hashed_names,
    ldns_hashed_names_node_free, ((void*)0));
  LDNS_FREE(zone->hashed_names);
 }
 zone->_nsec3params = nsec3rr;




 zone->hashed_names = ldns_rbtree_create(ldns_dname_compare_v);
 if (zone->hashed_names == ((void*)0)) {
  return;
 }
 for ( current_node = ldns_rbtree_first(zone->names)
     ; current_node != LDNS_RBTREE_NULL
     ; current_node = ldns_rbtree_next(current_node)
     ) {
  current_name = (ldns_dnssec_name *) current_node->data;
  ldns_dnssec_name_make_hashed_name(zone, current_name, nsec3rr);

 }
}
