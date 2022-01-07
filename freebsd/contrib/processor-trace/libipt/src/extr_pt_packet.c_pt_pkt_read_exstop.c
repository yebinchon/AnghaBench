
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_packet_exstop {int ip; } ;
struct pt_config {int const* end; } ;


 int const pt_pl_exstop_ip_mask ;
 int pte_eos ;
 int pte_internal ;
 int ptps_exstop ;

int pt_pkt_read_exstop(struct pt_packet_exstop *packet, const uint8_t *pos,
         const struct pt_config *config)
{
 if (!packet || !pos || !config)
  return -pte_internal;

 if (config->end < pos + ptps_exstop)
  return -pte_eos;

 packet->ip = pos[1] & pt_pl_exstop_ip_mask ? 1 : 0;

 return ptps_exstop;
}
