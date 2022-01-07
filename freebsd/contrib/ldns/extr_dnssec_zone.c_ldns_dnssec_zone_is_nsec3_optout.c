
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ldns_rr ;
struct TYPE_9__ {scalar_t__ data; } ;
typedef TYPE_1__ ldns_rbnode_t ;
struct TYPE_10__ {int names; int soa; } ;
typedef TYPE_2__ ldns_dnssec_zone ;
struct TYPE_11__ {int * nsec; } ;
typedef TYPE_3__ ldns_dnssec_name ;


 TYPE_1__* LDNS_RBTREE_NULL ;
 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 int LDNS_RR_TYPE_NSEC3PARAM ;
 scalar_t__ ldns_dnssec_name_find_rrset (int ,int ) ;
 scalar_t__ ldns_nsec3_optout (int *) ;
 TYPE_1__* ldns_rbtree_first (int ) ;
 TYPE_1__* ldns_rbtree_next (TYPE_1__*) ;
 scalar_t__ ldns_rr_get_type (int *) ;

bool
ldns_dnssec_zone_is_nsec3_optout(const ldns_dnssec_zone* zone)
{
 ldns_rr* nsec3;
 ldns_rbnode_t* node;

 if (ldns_dnssec_name_find_rrset(zone->soa, LDNS_RR_TYPE_NSEC3PARAM)) {
  node = ldns_rbtree_first(zone->names);
  while (node != LDNS_RBTREE_NULL) {
   nsec3 = ((ldns_dnssec_name*)node->data)->nsec;
   if (nsec3 &&ldns_rr_get_type(nsec3)
     == LDNS_RR_TYPE_NSEC3 &&
     ldns_nsec3_optout(nsec3)) {
    return 1;
   }
   node = ldns_rbtree_next(node);
  }
 }
 return 0;
}
