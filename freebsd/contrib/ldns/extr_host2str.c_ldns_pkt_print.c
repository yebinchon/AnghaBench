
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_pkt ;
typedef int FILE ;


 int ldns_output_format_default ;
 int ldns_pkt_print_fmt (int *,int ,int const*) ;

void
ldns_pkt_print(FILE *output, const ldns_pkt *pkt)
{
 ldns_pkt_print_fmt(output, ldns_output_format_default, pkt);
}
