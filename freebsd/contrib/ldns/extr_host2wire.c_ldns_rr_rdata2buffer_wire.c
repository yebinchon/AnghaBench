
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int ldns_status ;
typedef int ldns_rr ;
typedef int ldns_buffer ;


 int ldns_buffer_status (int *) ;
 int ldns_rdf2buffer_wire (int *,int ) ;
 scalar_t__ ldns_rr_rd_count (int const*) ;
 int ldns_rr_rdf (int const*,scalar_t__) ;

ldns_status
ldns_rr_rdata2buffer_wire(ldns_buffer *buffer, const ldns_rr *rr)
{
 uint16_t i;


 for (i = 0; i < ldns_rr_rd_count(rr); i++) {
  (void) ldns_rdf2buffer_wire(buffer, ldns_rr_rdf(rr,i));
 }
 return ldns_buffer_status(buffer);
}
