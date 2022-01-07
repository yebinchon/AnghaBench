
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct pt_packet_vmcs {int base; } ;
struct pt_config {int const* end; } ;


 int pt_opcs_vmcs ;
 int pt_pkt_read_value (int const*,int ) ;
 int pt_pl_vmcs_shl ;
 int pt_pl_vmcs_size ;
 int pte_eos ;
 int pte_internal ;
 int ptps_vmcs ;

int pt_pkt_read_vmcs(struct pt_packet_vmcs *packet, const uint8_t *pos,
       const struct pt_config *config)
{
 uint64_t payload;

 if (!packet || !pos || !config)
  return -pte_internal;

 if (config->end < pos + ptps_vmcs)
  return -pte_eos;

 payload = pt_pkt_read_value(pos + pt_opcs_vmcs, pt_pl_vmcs_size);

 packet->base = payload << pt_pl_vmcs_shl;

 return ptps_vmcs;
}
