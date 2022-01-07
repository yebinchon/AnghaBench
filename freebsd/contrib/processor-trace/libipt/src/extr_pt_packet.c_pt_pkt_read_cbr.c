
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_packet_cbr {int ratio; } ;
struct pt_config {int const* end; } ;


 int pte_eos ;
 int pte_internal ;
 int ptps_cbr ;

int pt_pkt_read_cbr(struct pt_packet_cbr *packet, const uint8_t *pos,
      const struct pt_config *config)
{
 if (!packet || !pos || !config)
  return -pte_internal;

 if (config->end < pos + ptps_cbr)
  return -pte_eos;

 packet->ratio = pos[2];

 return ptps_cbr;
}
