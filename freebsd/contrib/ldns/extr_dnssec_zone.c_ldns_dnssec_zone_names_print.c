
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rbtree_t ;
typedef int FILE ;


 int ldns_dnssec_zone_names_print_fmt (int *,int ,int const*,int) ;
 int ldns_output_format_default ;

void
ldns_dnssec_zone_names_print(FILE *out, const ldns_rbtree_t *tree, bool print_soa)
{
 ldns_dnssec_zone_names_print_fmt(out, ldns_output_format_default,
         tree, print_soa);
}
