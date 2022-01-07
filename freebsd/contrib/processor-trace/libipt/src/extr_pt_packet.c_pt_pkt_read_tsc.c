
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_packet_tsc {int tsc; } ;
struct pt_config {int const* end; } ;


 int pt_opcs_tsc ;
 int pt_pkt_read_value (int const*,int ) ;
 int pt_pl_tsc_size ;
 int pte_eos ;
 int pte_internal ;
 int ptps_tsc ;

int pt_pkt_read_tsc(struct pt_packet_tsc *packet, const uint8_t *pos,
      const struct pt_config *config)
{
 if (!packet || !pos || !config)
  return -pte_internal;

 if (config->end < pos + ptps_tsc)
  return -pte_eos;

 packet->tsc = pt_pkt_read_value(pos + pt_opcs_tsc, pt_pl_tsc_size);

 return ptps_tsc;
}
