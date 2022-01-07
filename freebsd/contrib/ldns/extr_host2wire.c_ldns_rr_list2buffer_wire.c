
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_buffer ;


 int LDNS_SECTION_ANY ;
 int ldns_buffer_status (int *) ;
 int ldns_rr2buffer_wire (int *,int ,int ) ;
 int ldns_rr_list_rr (int const*,scalar_t__) ;
 scalar_t__ ldns_rr_list_rr_count (int const*) ;

ldns_status
ldns_rr_list2buffer_wire(ldns_buffer *buffer,const ldns_rr_list *rr_list)
{
 uint16_t rr_count;
 uint16_t i;

 rr_count = ldns_rr_list_rr_count(rr_list);
 for(i = 0; i < rr_count; i++) {
  (void)ldns_rr2buffer_wire(buffer, ldns_rr_list_rr(rr_list, i),
       LDNS_SECTION_ANY);
 }
 return ldns_buffer_status(buffer);
}
