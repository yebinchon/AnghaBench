
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_zone ;
typedef int ldns_output_format ;
typedef int FILE ;


 int ldns_rr_list_print_fmt (int *,int const*,int ) ;
 int ldns_rr_print_fmt (int *,int const*,scalar_t__) ;
 int ldns_zone_rrs (int const*) ;
 scalar_t__ ldns_zone_soa (int const*) ;

void
ldns_zone_print_fmt(FILE *output,
  const ldns_output_format *fmt, const ldns_zone *z)
{
 if(ldns_zone_soa(z))
  ldns_rr_print_fmt(output, fmt, ldns_zone_soa(z));
 ldns_rr_list_print_fmt(output, fmt, ldns_zone_rrs(z));
}
