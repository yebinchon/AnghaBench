
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_status ;
typedef int ldns_pkt ;
struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ ldns_lookup_table ;
typedef int ldns_buffer ;


 int ldns_buffer_printf (int *,char*,...) ;
 int ldns_buffer_status (int *) ;
 TYPE_1__* ldns_lookup_by_id (int ,int) ;
 int ldns_opcodes ;
 scalar_t__ ldns_pkt_aa (int const*) ;
 scalar_t__ ldns_pkt_ad (int const*) ;
 scalar_t__ ldns_pkt_ancount (int const*) ;
 scalar_t__ ldns_pkt_arcount (int const*) ;
 scalar_t__ ldns_pkt_cd (int const*) ;
 scalar_t__ ldns_pkt_get_opcode (int const*) ;
 scalar_t__ ldns_pkt_get_rcode (int const*) ;
 scalar_t__ ldns_pkt_id (int const*) ;
 scalar_t__ ldns_pkt_nscount (int const*) ;
 scalar_t__ ldns_pkt_qdcount (int const*) ;
 scalar_t__ ldns_pkt_qr (int const*) ;
 scalar_t__ ldns_pkt_ra (int const*) ;
 scalar_t__ ldns_pkt_rd (int const*) ;
 scalar_t__ ldns_pkt_tc (int const*) ;
 int ldns_rcodes ;

ldns_status
ldns_pktheader2buffer_str(ldns_buffer *output, const ldns_pkt *pkt)
{
 ldns_lookup_table *opcode = ldns_lookup_by_id(ldns_opcodes,
                       (int) ldns_pkt_get_opcode(pkt));
 ldns_lookup_table *rcode = ldns_lookup_by_id(ldns_rcodes,
                       (int) ldns_pkt_get_rcode(pkt));

 ldns_buffer_printf(output, ";; ->>HEADER<<- ");
 if (opcode) {
  ldns_buffer_printf(output, "opcode: %s, ", opcode->name);
 } else {
  ldns_buffer_printf(output, "opcode: ?? (%u), ",
    ldns_pkt_get_opcode(pkt));
 }
 if (rcode) {
  ldns_buffer_printf(output, "rcode: %s, ", rcode->name);
 } else {
  ldns_buffer_printf(output, "rcode: ?? (%u), ", ldns_pkt_get_rcode(pkt));
 }
 ldns_buffer_printf(output, "id: %d\n", ldns_pkt_id(pkt));
 ldns_buffer_printf(output, ";; flags: ");

 if (ldns_pkt_qr(pkt)) {
  ldns_buffer_printf(output, "qr ");
 }
 if (ldns_pkt_aa(pkt)) {
  ldns_buffer_printf(output, "aa ");
 }
 if (ldns_pkt_tc(pkt)) {
  ldns_buffer_printf(output, "tc ");
 }
 if (ldns_pkt_rd(pkt)) {
  ldns_buffer_printf(output, "rd ");
 }
 if (ldns_pkt_cd(pkt)) {
  ldns_buffer_printf(output, "cd ");
 }
 if (ldns_pkt_ra(pkt)) {
  ldns_buffer_printf(output, "ra ");
 }
 if (ldns_pkt_ad(pkt)) {
  ldns_buffer_printf(output, "ad ");
 }
 ldns_buffer_printf(output, "; ");
 ldns_buffer_printf(output, "QUERY: %u, ", ldns_pkt_qdcount(pkt));
 ldns_buffer_printf(output, "ANSWER: %u, ", ldns_pkt_ancount(pkt));
 ldns_buffer_printf(output, "AUTHORITY: %u, ", ldns_pkt_nscount(pkt));
 ldns_buffer_printf(output, "ADDITIONAL: %u ", ldns_pkt_arcount(pkt));
 return ldns_buffer_status(output);
}
