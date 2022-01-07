
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_output_format ;
typedef int ldns_dnssec_name ;
typedef int FILE ;


 int ldns_dnssec_name_print_soa_fmt (int *,int const*,int const*,int) ;

void
ldns_dnssec_name_print_fmt(FILE *out, const ldns_output_format *fmt,
  const ldns_dnssec_name *name)
{
 ldns_dnssec_name_print_soa_fmt(out, fmt, name, 1);
}
