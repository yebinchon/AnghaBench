
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_output_format ;
typedef int ldns_dnssec_trust_tree ;
typedef int FILE ;


 int ldns_dnssec_trust_tree_print_sm_fmt (int *,int const*,int *,size_t,int,int *,int ) ;

void
ldns_dnssec_trust_tree_print_fmt(FILE *out, const ldns_output_format *fmt,
  ldns_dnssec_trust_tree *tree,
  size_t tabs,
  bool extended)
{
 ldns_dnssec_trust_tree_print_sm_fmt(out, fmt,
   tree, tabs, extended, ((void*)0), 0);
}
