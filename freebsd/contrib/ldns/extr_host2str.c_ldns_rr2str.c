
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;


 int ldns_output_format_default ;
 char* ldns_rr2str_fmt (int ,int const*) ;

char *
ldns_rr2str(const ldns_rr *rr)
{
 return ldns_rr2str_fmt(ldns_output_format_default, rr);
}
