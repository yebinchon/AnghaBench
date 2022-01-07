
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int ldns_status ;
typedef int ldns_rr ;
typedef int ldns_buffer ;
 int LDNS_SECTION_QUESTION ;
 scalar_t__ ldns_buffer_position (int *) ;
 scalar_t__ ldns_buffer_reserve (int *,int) ;
 int ldns_buffer_status (int *) ;
 int ldns_buffer_write_u16 (int *,int) ;
 int ldns_buffer_write_u16_at (int *,scalar_t__,scalar_t__) ;
 int ldns_buffer_write_u32 (int *,int ) ;
 int ldns_rdf2buffer_wire (int *,scalar_t__) ;
 int ldns_rdf2buffer_wire_canonical (int *,scalar_t__) ;
 int ldns_rr_get_class (int const*) ;
 int ldns_rr_get_type (int const*) ;
 scalar_t__ ldns_rr_owner (int const*) ;
 scalar_t__ ldns_rr_rd_count (int const*) ;
 scalar_t__ ldns_rr_rdf (int const*,scalar_t__) ;
 int ldns_rr_ttl (int const*) ;

ldns_status
ldns_rr2buffer_wire_canonical(ldns_buffer *buffer,
      const ldns_rr *rr,
      int section)
{
 uint16_t i;
 uint16_t rdl_pos = 0;
 bool pre_rfc3597 = 0;
 switch (ldns_rr_get_type(rr)) {
 case 137:
 case 144:
 case 143:
 case 149:
 case 129:
 case 145:
 case 142:
 case 140:
 case 135:
 case 147:
 case 141:
 case 139:
 case 133:
 case 150:
 case 131:
 case 130:
 case 134:
 case 136:
 case 138:
 case 146:
 case 128:
 case 148:
 case 151:
 case 132:
  pre_rfc3597 = 1;
  break;
 default:
  break;
 }

 if (ldns_rr_owner(rr)) {
  (void) ldns_rdf2buffer_wire_canonical(buffer, ldns_rr_owner(rr));
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
  for (i = 0; i < ldns_rr_rd_count(rr); i++) {
   if (pre_rfc3597) {
    (void) ldns_rdf2buffer_wire_canonical(
     buffer, ldns_rr_rdf(rr, i));
   } else {
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
