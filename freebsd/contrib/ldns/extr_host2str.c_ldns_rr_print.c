
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int FILE ;


 int ldns_output_format_default ;
 int ldns_rr_print_fmt (int *,int ,int const*) ;

void
ldns_rr_print(FILE *output, const ldns_rr *rr)
{
 ldns_rr_print_fmt(output, ldns_output_format_default, rr);
}
