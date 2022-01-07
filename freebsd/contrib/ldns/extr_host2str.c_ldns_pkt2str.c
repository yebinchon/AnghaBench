
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_pkt ;


 int ldns_output_format_default ;
 char* ldns_pkt2str_fmt (int ,int const*) ;

char *
ldns_pkt2str(const ldns_pkt *pkt)
{
 return ldns_pkt2str_fmt(ldns_output_format_default, pkt);
}
