
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_status ;
typedef int ldns_rr ;
typedef int ldns_buffer ;


 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 int LDNS_STATUS_ERR ;
 int ldns_buffer_status (int *) ;
 int ldns_rdf2buffer_wire_canonical (int *,int ) ;
 scalar_t__ ldns_rr_get_type (int const*) ;
 int ldns_rr_rd_count (int const*) ;
 int ldns_rr_rdf (int const*,int) ;

ldns_status
ldns_rrsig2buffer_wire(ldns_buffer *buffer, const ldns_rr *rr)
{
 uint16_t i;


 if (ldns_rr_get_type(rr) != LDNS_RR_TYPE_RRSIG) {
  return LDNS_STATUS_ERR;
 }



 for (i = 0; i < ldns_rr_rd_count(rr) - 1; i++) {
  (void) ldns_rdf2buffer_wire_canonical(buffer,
    ldns_rr_rdf(rr, i));
 }

 return ldns_buffer_status(buffer);
}
