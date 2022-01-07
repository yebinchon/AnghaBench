
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ldns_status ;
typedef int ldns_pkt ;
typedef int ldns_buffer ;


 scalar_t__ ldns_buffer_reserve (int *,int) ;
 int ldns_buffer_status (int *) ;
 int ldns_buffer_write_u16 (int *,int ) ;
 int ldns_buffer_write_u8 (int *,int) ;
 int ldns_pkt_aa (int const*) ;
 int ldns_pkt_ad (int const*) ;
 int ldns_pkt_ancount (int const*) ;
 int ldns_pkt_arcount (int const*) ;
 int ldns_pkt_cd (int const*) ;
 scalar_t__ ldns_pkt_edns (int const*) ;
 int ldns_pkt_get_opcode (int const*) ;
 int ldns_pkt_get_rcode (int const*) ;
 int ldns_pkt_id (int const*) ;
 int ldns_pkt_nscount (int const*) ;
 int ldns_pkt_qdcount (int const*) ;
 int ldns_pkt_qr (int const*) ;
 int ldns_pkt_ra (int const*) ;
 int ldns_pkt_rd (int const*) ;
 int ldns_pkt_tc (int const*) ;
 scalar_t__ ldns_pkt_tsig (int const*) ;

__attribute__((used)) static ldns_status
ldns_hdr2buffer_wire(ldns_buffer *buffer, const ldns_pkt *packet)
{
 uint8_t flags;
 uint16_t arcount;

 if (ldns_buffer_reserve(buffer, 12)) {
  ldns_buffer_write_u16(buffer, ldns_pkt_id(packet));

  flags = ldns_pkt_qr(packet) << 7
          | ldns_pkt_get_opcode(packet) << 3
          | ldns_pkt_aa(packet) << 2
          | ldns_pkt_tc(packet) << 1 | ldns_pkt_rd(packet);
  ldns_buffer_write_u8(buffer, flags);

  flags = ldns_pkt_ra(packet) << 7

          | ldns_pkt_ad(packet) << 5
          | ldns_pkt_cd(packet) << 4
   | ldns_pkt_get_rcode(packet);
  ldns_buffer_write_u8(buffer, flags);

  ldns_buffer_write_u16(buffer, ldns_pkt_qdcount(packet));
  ldns_buffer_write_u16(buffer, ldns_pkt_ancount(packet));
  ldns_buffer_write_u16(buffer, ldns_pkt_nscount(packet));

  arcount = ldns_pkt_arcount(packet);
  if (ldns_pkt_tsig(packet)) {
   arcount++;
  }
  if (ldns_pkt_edns(packet)) {
   arcount++;
  }
  ldns_buffer_write_u16(buffer, arcount);
 }

 return ldns_buffer_status(buffer);
}
