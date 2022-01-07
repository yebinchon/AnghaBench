
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_dnssec_trust_tree ;
struct TYPE_4__ {TYPE_2__* parent; int * rrset; } ;
typedef TYPE_1__ ldns_dnssec_data_chain ;
struct TYPE_5__ {int * rrset; } ;


 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 int LDNS_STATUS_OK ;
 int * ldns_dnssec_derive_trust_tree_time (TYPE_2__*,int *,int ) ;
 int ldns_dnssec_trust_tree_add_parent (int *,int *,int *,int ) ;
 scalar_t__ ldns_rr_compare_ds (int *,int *) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_list_rr (int *,size_t) ;
 size_t ldns_rr_list_rr_count (int *) ;

void
ldns_dnssec_derive_trust_tree_ds_rrset_time(
  ldns_dnssec_trust_tree *new_tree,
  ldns_dnssec_data_chain *data_chain,
  ldns_rr *cur_rr,
  time_t check_time)
{
 size_t j, h;
 ldns_rr_list *cur_rrset = data_chain->rrset;
 ldns_dnssec_trust_tree *cur_parent_tree;
 ldns_rr *cur_parent_rr;


 if (ldns_rr_get_type(cur_rr) == LDNS_RR_TYPE_DNSKEY &&
     data_chain->parent &&
     data_chain->parent->rrset
     ) {
  for (j = 0;
   j < ldns_rr_list_rr_count(data_chain->parent->rrset);
   j++) {
   cur_parent_rr = ldns_rr_list_rr(data_chain->parent->rrset, j);
   if (ldns_rr_get_type(cur_parent_rr) == LDNS_RR_TYPE_DS) {
    for (h = 0; h < ldns_rr_list_rr_count(cur_rrset); h++) {
     cur_rr = ldns_rr_list_rr(cur_rrset, h);
     if (ldns_rr_compare_ds(cur_rr, cur_parent_rr)) {
      cur_parent_tree =
       ldns_dnssec_derive_trust_tree_time(
           data_chain->parent,
           cur_parent_rr,
           check_time);
      (void) ldns_dnssec_trust_tree_add_parent(
                  new_tree,
                  cur_parent_tree,
                  ((void*)0),
                  LDNS_STATUS_OK);
     } else {

     }
    }
   }
  }
 }
}
