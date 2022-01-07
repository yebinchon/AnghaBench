
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef void* uint32_t ;
struct pt_packet_mwait {void* ext; void* hints; } ;
struct pt_config {int const* end; } ;


 int pt_opcs_mwait ;
 scalar_t__ pt_pkt_read_value (int const*,int) ;
 int pt_pl_mwait_ext_size ;
 int pt_pl_mwait_hints_size ;
 int pte_eos ;
 int pte_internal ;
 int ptps_mwait ;

int pt_pkt_read_mwait(struct pt_packet_mwait *packet, const uint8_t *pos,
        const struct pt_config *config)
{
 if (!packet || !pos || !config)
  return -pte_internal;

 if (config->end < pos + ptps_mwait)
  return -pte_eos;

 packet->hints = (uint32_t) pt_pkt_read_value(pos + pt_opcs_mwait,
           pt_pl_mwait_hints_size);
 packet->ext = (uint32_t) pt_pkt_read_value(pos + pt_opcs_mwait +
         pt_pl_mwait_hints_size,
         pt_pl_mwait_ext_size);
 return ptps_mwait;
}
