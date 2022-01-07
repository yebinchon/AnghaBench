
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_output_format ;
typedef int ldns_buffer ;


 int ldns_buffer_status (int *) ;
 int ldns_rr2buffer_str_fmt (int *,int const*,int ) ;
 int ldns_rr_list_rr (int const*,scalar_t__) ;
 scalar_t__ ldns_rr_list_rr_count (int const*) ;

ldns_status
ldns_rr_list2buffer_str_fmt(ldns_buffer *output,
  const ldns_output_format *fmt, const ldns_rr_list *list)
{
 uint16_t i;

 for(i = 0; i < ldns_rr_list_rr_count(list); i++) {
  (void) ldns_rr2buffer_str_fmt(output, fmt,
    ldns_rr_list_rr(list, i));
 }
 return ldns_buffer_status(output);
}
