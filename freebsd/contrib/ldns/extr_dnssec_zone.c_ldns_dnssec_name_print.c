
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_dnssec_name ;
typedef int FILE ;


 int ldns_dnssec_name_print_fmt (int *,int ,int const*) ;
 int ldns_output_format_default ;

void
ldns_dnssec_name_print(FILE *out, const ldns_dnssec_name *name)
{
 ldns_dnssec_name_print_fmt(out, ldns_output_format_default, name);
}
