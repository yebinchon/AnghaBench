
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_status ;
typedef int ldns_pkt ;


 int LDNS_AA_WIRE (int const*) ;
 int LDNS_AD_WIRE (int const*) ;
 int LDNS_ANCOUNT (int const*) ;
 int LDNS_ARCOUNT (int const*) ;
 int LDNS_CD_WIRE (int const*) ;
 size_t LDNS_HEADER_SIZE ;
 int LDNS_ID_WIRE (int const*) ;
 int LDNS_NSCOUNT (int const*) ;
 int LDNS_OPCODE_WIRE (int const*) ;
 int LDNS_QDCOUNT (int const*) ;
 int LDNS_QR_WIRE (int const*) ;
 int LDNS_RA_WIRE (int const*) ;
 int LDNS_RCODE_WIRE (int const*) ;
 int LDNS_RD_WIRE (int const*) ;
 int LDNS_STATUS_OK ;
 int LDNS_STATUS_WIRE_INCOMPLETE_HEADER ;
 int LDNS_TC_WIRE (int const*) ;
 int ldns_pkt_set_aa (int *,int ) ;
 int ldns_pkt_set_ad (int *,int ) ;
 int ldns_pkt_set_ancount (int *,int ) ;
 int ldns_pkt_set_arcount (int *,int ) ;
 int ldns_pkt_set_cd (int *,int ) ;
 int ldns_pkt_set_id (int *,int ) ;
 int ldns_pkt_set_nscount (int *,int ) ;
 int ldns_pkt_set_opcode (int *,int ) ;
 int ldns_pkt_set_qdcount (int *,int ) ;
 int ldns_pkt_set_qr (int *,int ) ;
 int ldns_pkt_set_ra (int *,int ) ;
 int ldns_pkt_set_rcode (int *,int ) ;
 int ldns_pkt_set_rd (int *,int ) ;
 int ldns_pkt_set_tc (int *,int ) ;

__attribute__((used)) static ldns_status
ldns_wire2pkt_hdr(ldns_pkt *packet, const uint8_t *wire, size_t max, size_t *pos)
{
 if (*pos + LDNS_HEADER_SIZE > max) {
  return LDNS_STATUS_WIRE_INCOMPLETE_HEADER;
 } else {
  ldns_pkt_set_id(packet, LDNS_ID_WIRE(wire));
  ldns_pkt_set_qr(packet, LDNS_QR_WIRE(wire));
  ldns_pkt_set_opcode(packet, LDNS_OPCODE_WIRE(wire));
  ldns_pkt_set_aa(packet, LDNS_AA_WIRE(wire));
  ldns_pkt_set_tc(packet, LDNS_TC_WIRE(wire));
  ldns_pkt_set_rd(packet, LDNS_RD_WIRE(wire));
  ldns_pkt_set_ra(packet, LDNS_RA_WIRE(wire));
  ldns_pkt_set_ad(packet, LDNS_AD_WIRE(wire));
  ldns_pkt_set_cd(packet, LDNS_CD_WIRE(wire));
  ldns_pkt_set_rcode(packet, LDNS_RCODE_WIRE(wire));

  ldns_pkt_set_qdcount(packet, LDNS_QDCOUNT(wire));
  ldns_pkt_set_ancount(packet, LDNS_ANCOUNT(wire));
  ldns_pkt_set_nscount(packet, LDNS_NSCOUNT(wire));
  ldns_pkt_set_arcount(packet, LDNS_ARCOUNT(wire));

  *pos += LDNS_HEADER_SIZE;

  return LDNS_STATUS_OK;
 }
}
