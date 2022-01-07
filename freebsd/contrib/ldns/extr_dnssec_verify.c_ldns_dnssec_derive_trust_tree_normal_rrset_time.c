
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int time_t ;
typedef int ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
struct TYPE_11__ {size_t parent_count; TYPE_1__** parents; } ;
typedef TYPE_2__ ldns_dnssec_trust_tree ;
struct TYPE_12__ {TYPE_7__* parent; int rrset; } ;
typedef TYPE_3__ ldns_dnssec_data_chain ;
struct TYPE_13__ {int * rrset; } ;
struct TYPE_10__ {int * rr; } ;


 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 int assert (int) ;
 scalar_t__ ldns_calc_keytag (int *) ;
 scalar_t__ ldns_dname_compare (int ,int ) ;
 TYPE_2__* ldns_dnssec_derive_trust_tree_time (TYPE_7__*,int *,int ) ;
 int ldns_dnssec_trust_tree_add_parent (TYPE_2__*,TYPE_2__*,int *,int ) ;
 scalar_t__ ldns_rdf2native_int16 (int ) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_list_clone (int ) ;
 int ldns_rr_list_deep_free (int *) ;
 int * ldns_rr_list_pop_rrset (int *) ;
 int * ldns_rr_list_rr (int *,size_t) ;
 scalar_t__ ldns_rr_list_rr_count (int *) ;
 int ldns_rr_list_sort (int *) ;
 int ldns_rr_owner (int *) ;
 int ldns_rr_rrsig_keytag (int *) ;
 int ldns_verify_rrsig_time (int *,int *,int *,int ) ;

void
ldns_dnssec_derive_trust_tree_normal_rrset_time(
  ldns_dnssec_trust_tree *new_tree,
  ldns_dnssec_data_chain *data_chain,
  ldns_rr *cur_sig_rr,
  time_t check_time)
{
 size_t i, j;
 ldns_rr_list *cur_rrset = ldns_rr_list_clone(data_chain->rrset);
 ldns_dnssec_trust_tree *cur_parent_tree;
 ldns_rr *cur_parent_rr;
 uint16_t cur_keytag;
 ldns_rr_list *tmp_rrset = ((void*)0);
 ldns_status cur_status;

 cur_keytag = ldns_rdf2native_int16(ldns_rr_rrsig_keytag(cur_sig_rr));

 for (j = 0; j < ldns_rr_list_rr_count(data_chain->parent->rrset); j++) {
  cur_parent_rr = ldns_rr_list_rr(data_chain->parent->rrset, j);
  if (ldns_rr_get_type(cur_parent_rr) == LDNS_RR_TYPE_DNSKEY) {
   if (ldns_calc_keytag(cur_parent_rr) == cur_keytag) {


    if (cur_rrset && ldns_rr_list_rr_count(cur_rrset) > 0) {
     tmp_rrset = cur_rrset;
     if (ldns_rr_get_type(ldns_rr_list_rr(cur_rrset, 0))
         == LDNS_RR_TYPE_NSEC ||
         ldns_rr_get_type(ldns_rr_list_rr(cur_rrset, 0))
         == LDNS_RR_TYPE_NSEC3) {


      ldns_rr_list_sort(cur_rrset);
      assert(tmp_rrset == cur_rrset);
      tmp_rrset = ldns_rr_list_pop_rrset(cur_rrset);


      while (tmp_rrset &&
             ldns_rr_list_rr_count(cur_rrset) > 0 &&
             ldns_dname_compare(
        ldns_rr_owner(ldns_rr_list_rr(
                  tmp_rrset, 0)),
        ldns_rr_owner(cur_sig_rr)) != 0) {
       ldns_rr_list_deep_free(tmp_rrset);
       tmp_rrset =
        ldns_rr_list_pop_rrset(cur_rrset);
      }
     }
     cur_status = ldns_verify_rrsig_time(
       tmp_rrset,
       cur_sig_rr,
       cur_parent_rr,
       check_time);
     if (tmp_rrset && tmp_rrset != cur_rrset
       ) {
      ldns_rr_list_deep_free(
        tmp_rrset);
      tmp_rrset = ((void*)0);
     }

     for (i = 0; i < new_tree->parent_count; i++) {
      if (cur_parent_rr == new_tree->parents[i]->rr) {
       goto done;
      }
     }

     cur_parent_tree =
      ldns_dnssec_derive_trust_tree_time(
        data_chain->parent,
                      cur_parent_rr,
        check_time);
     (void)ldns_dnssec_trust_tree_add_parent(new_tree,
                cur_parent_tree,
                cur_sig_rr,
                cur_status);
    }
   }
  }
 }
 done:
 ldns_rr_list_deep_free(cur_rrset);
}
