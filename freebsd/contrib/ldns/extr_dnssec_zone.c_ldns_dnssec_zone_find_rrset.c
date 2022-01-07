
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ldns_rr_type ;
typedef int ldns_rdf ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_1__ ldns_rbnode_t ;
struct TYPE_6__ {int names; } ;
typedef TYPE_2__ ldns_dnssec_zone ;
typedef int ldns_dnssec_rrsets ;
typedef int ldns_dnssec_name ;


 int * ldns_dnssec_name_find_rrset (int *,int ) ;
 TYPE_1__* ldns_rbtree_search (int ,int const*) ;

ldns_dnssec_rrsets *
ldns_dnssec_zone_find_rrset(const ldns_dnssec_zone *zone,
        const ldns_rdf *dname,
        ldns_rr_type type)
{
 ldns_rbnode_t *node;

 if (!zone || !dname || !zone->names) {
  return ((void*)0);
 }

 node = ldns_rbtree_search(zone->names, dname);
 if (node) {
  return ldns_dnssec_name_find_rrset((ldns_dnssec_name *)node->data,
         type);
 } else {
  return ((void*)0);
 }
}
