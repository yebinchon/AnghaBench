
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int ldns_status ;
typedef int ldns_rr ;
typedef int ldns_rbtree_t ;
typedef int ldns_buffer ;
struct TYPE_2__ {scalar_t__ _compress; } ;


 scalar_t__ LDNS_RR_COMPRESS ;
 int LDNS_SECTION_QUESTION ;
 scalar_t__ ldns_buffer_position (int *) ;
 scalar_t__ ldns_buffer_reserve (int *,int) ;
 int ldns_buffer_status (int *) ;
 int ldns_buffer_write_u16 (int *,int ) ;
 int ldns_buffer_write_u16_at (int *,scalar_t__,scalar_t__) ;
 int ldns_buffer_write_u32 (int *,int ) ;
 int ldns_dname2buffer_wire_compress (int *,scalar_t__,int *) ;
 int ldns_rdf2buffer_wire (int *,int ) ;
 int ldns_rdf2buffer_wire_compress (int *,int ,int *) ;
 TYPE_1__* ldns_rr_descript (int ) ;
 int ldns_rr_get_class (int const*) ;
 int ldns_rr_get_type (int const*) ;
 scalar_t__ ldns_rr_owner (int const*) ;
 scalar_t__ ldns_rr_rd_count (int const*) ;
 int ldns_rr_rdf (int const*,scalar_t__) ;
 int ldns_rr_ttl (int const*) ;

ldns_status
ldns_rr2buffer_wire_compress(ldns_buffer *buffer, const ldns_rr *rr, int section, ldns_rbtree_t *compression_data)
{
 uint16_t i;
 uint16_t rdl_pos = 0;

 if (ldns_rr_owner(rr)) {
  (void) ldns_dname2buffer_wire_compress(buffer, ldns_rr_owner(rr), compression_data);
 }

 if (ldns_buffer_reserve(buffer, 4)) {
  (void) ldns_buffer_write_u16(buffer, ldns_rr_get_type(rr));
  (void) ldns_buffer_write_u16(buffer, ldns_rr_get_class(rr));
 }

 if (section != LDNS_SECTION_QUESTION) {
  if (ldns_buffer_reserve(buffer, 6)) {
   ldns_buffer_write_u32(buffer, ldns_rr_ttl(rr));

   rdl_pos = ldns_buffer_position(buffer);
   ldns_buffer_write_u16(buffer, 0);
  }
  if (LDNS_RR_COMPRESS ==
      ldns_rr_descript(ldns_rr_get_type(rr))->_compress) {

   for (i = 0; i < ldns_rr_rd_count(rr); i++) {
    (void) ldns_rdf2buffer_wire_compress(buffer,
        ldns_rr_rdf(rr, i), compression_data);
   }
  } else {
   for (i = 0; i < ldns_rr_rd_count(rr); i++) {
    (void) ldns_rdf2buffer_wire(
        buffer, ldns_rr_rdf(rr, i));
   }
  }
  if (rdl_pos != 0) {
   ldns_buffer_write_u16_at(buffer, rdl_pos,
                            ldns_buffer_position(buffer)
                              - rdl_pos - 2);
  }
 }
 return ldns_buffer_status(buffer);
}
