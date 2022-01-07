
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_packet_mtc {int ctc; } ;
struct pt_config {int const* end; } ;


 size_t pt_opcs_mtc ;
 int pte_eos ;
 int pte_internal ;
 int ptps_mtc ;

int pt_pkt_read_mtc(struct pt_packet_mtc *packet, const uint8_t *pos,
      const struct pt_config *config)
{
 if (!packet || !pos || !config)
  return -pte_internal;

 if (config->end < pos + ptps_mtc)
  return -pte_eos;

 packet->ctc = pos[pt_opcs_mtc];

 return ptps_mtc;
}
