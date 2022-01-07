
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_dnssec_trust_tree ;
typedef int FILE ;


 int ldns_dnssec_trust_tree_print_fmt (int *,int ,int *,size_t,int) ;
 int ldns_output_format_default ;

void
ldns_dnssec_trust_tree_print(FILE *out,
  ldns_dnssec_trust_tree *tree,
  size_t tabs,
  bool extended)
{
 ldns_dnssec_trust_tree_print_fmt(out, ldns_output_format_default,
   tree, tabs, extended);
}
