
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;


 int ldns_output_format_default ;
 char* ldns_rr_list2str_fmt (int ,int const*) ;

char *
ldns_rr_list2str(const ldns_rr_list *list)
{
 return ldns_rr_list2str_fmt(ldns_output_format_default, list);
}
