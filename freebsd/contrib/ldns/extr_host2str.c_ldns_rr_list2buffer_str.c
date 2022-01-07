
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_buffer ;


 int ldns_output_format_default ;
 int ldns_rr_list2buffer_str_fmt (int *,int ,int const*) ;

ldns_status
ldns_rr_list2buffer_str(ldns_buffer *output, const ldns_rr_list *list)
{
 return ldns_rr_list2buffer_str_fmt(
   output, ldns_output_format_default, list);
}
