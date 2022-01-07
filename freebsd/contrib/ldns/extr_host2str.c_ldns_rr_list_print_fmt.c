
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_output_format ;
typedef int FILE ;


 int ldns_rr_list_rr (int const*,size_t) ;
 size_t ldns_rr_list_rr_count (int const*) ;
 int ldns_rr_print_fmt (int *,int const*,int ) ;

void
ldns_rr_list_print_fmt(FILE *output,
  const ldns_output_format *fmt, const ldns_rr_list *lst)
{
 size_t i;
 for (i = 0; i < ldns_rr_list_rr_count(lst); i++) {
  ldns_rr_print_fmt(output, fmt, ldns_rr_list_rr(lst, i));
 }
}
