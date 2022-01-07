
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
struct TYPE_10__ {scalar_t__ data; } ;
typedef TYPE_2__ ldns_rbnode_t ;
struct TYPE_11__ {int names; int soa; } ;
typedef TYPE_3__ ldns_dnssec_zone ;
struct TYPE_12__ {TYPE_1__* rrs; } ;
typedef TYPE_4__ ldns_dnssec_rrsets ;
typedef int ldns_dnssec_name ;
struct TYPE_9__ {scalar_t__ rr; } ;


 int LDNS_DEFAULT_TTL ;
 int LDNS_RR_TYPE_NSEC ;
 int LDNS_RR_TYPE_SOA ;
 scalar_t__ LDNS_STATUS_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int * ldns_dnssec_create_nsec (int *,int *,int ) ;
 scalar_t__ ldns_dnssec_name_add_rr (int *,int *) ;
 TYPE_4__* ldns_dnssec_name_find_rrset (int ,int ) ;
 TYPE_2__* ldns_dnssec_name_node_next_nonglue (int ) ;
 int ldns_rbtree_first (int ) ;
 int ldns_rbtree_next (TYPE_2__*) ;
 int ldns_rdf2native_int32 (int *) ;
 int ldns_rr_free (int *) ;
 int ldns_rr_list_push_rr (int *,int *) ;
 int * ldns_rr_rdf (scalar_t__,int) ;
 int ldns_rr_set_ttl (int *,int ) ;
 int printf (char*) ;

ldns_status
ldns_dnssec_zone_create_nsecs(ldns_dnssec_zone *zone,
                              ldns_rr_list *new_rrs)
{

 ldns_rbnode_t *first_node, *cur_node, *next_node;
 ldns_dnssec_name *cur_name, *next_name;
 ldns_rr *nsec_rr;
 uint32_t nsec_ttl;
 ldns_dnssec_rrsets *soa;




 soa = ldns_dnssec_name_find_rrset(zone->soa, LDNS_RR_TYPE_SOA);




 if (soa && soa->rrs && soa->rrs->rr
   && (ldns_rr_rdf(soa->rrs->rr, 6) != ((void*)0))) {
  nsec_ttl = ldns_rdf2native_int32(ldns_rr_rdf(soa->rrs->rr, 6));
 } else {
  nsec_ttl = LDNS_DEFAULT_TTL;
 }

 first_node = ldns_dnssec_name_node_next_nonglue(
          ldns_rbtree_first(zone->names));
 cur_node = first_node;
 if (cur_node) {
  next_node = ldns_dnssec_name_node_next_nonglue(
              ldns_rbtree_next(cur_node));
 } else {
  next_node = ((void*)0);
 }

 while (cur_node && next_node) {
  cur_name = (ldns_dnssec_name *)cur_node->data;
  next_name = (ldns_dnssec_name *)next_node->data;
  nsec_rr = ldns_dnssec_create_nsec(cur_name,
                                    next_name,
                                    LDNS_RR_TYPE_NSEC);
  ldns_rr_set_ttl(nsec_rr, nsec_ttl);
  if(ldns_dnssec_name_add_rr(cur_name, nsec_rr)!=LDNS_STATUS_OK){
   ldns_rr_free(nsec_rr);
   return LDNS_STATUS_ERR;
  }
  ldns_rr_list_push_rr(new_rrs, nsec_rr);
  cur_node = next_node;
  if (cur_node) {
   next_node = ldns_dnssec_name_node_next_nonglue(
                               ldns_rbtree_next(cur_node));
  }
 }

 if (cur_node && !next_node) {
  cur_name = (ldns_dnssec_name *)cur_node->data;
  next_name = (ldns_dnssec_name *)first_node->data;
  nsec_rr = ldns_dnssec_create_nsec(cur_name,
                                    next_name,
                                    LDNS_RR_TYPE_NSEC);
  ldns_rr_set_ttl(nsec_rr, nsec_ttl);
  if(ldns_dnssec_name_add_rr(cur_name, nsec_rr)!=LDNS_STATUS_OK){
   ldns_rr_free(nsec_rr);
   return LDNS_STATUS_ERR;
  }
  ldns_rr_list_push_rr(new_rrs, nsec_rr);
 } else {
  printf("error\n");
 }

 return LDNS_STATUS_OK;
}
