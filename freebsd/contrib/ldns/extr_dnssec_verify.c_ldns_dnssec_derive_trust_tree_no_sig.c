
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_dnssec_trust_tree ;
typedef int ldns_dnssec_data_chain ;


 int ldns_dnssec_derive_trust_tree_no_sig_time (int *,int *,int ) ;
 int ldns_time (int *) ;

void
ldns_dnssec_derive_trust_tree_no_sig(ldns_dnssec_trust_tree *new_tree,
                                     ldns_dnssec_data_chain *data_chain)
{
 ldns_dnssec_derive_trust_tree_no_sig_time(
   new_tree, data_chain, ldns_time(((void*)0)));
}
