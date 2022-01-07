
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_packet_mnt {int payload; } ;
struct pt_config {int const* end; } ;


 int pt_opcs_mnt ;
 int pt_pkt_read_value (int const*,int ) ;
 int pt_pl_mnt_size ;
 int pte_eos ;
 int pte_internal ;
 int ptps_mnt ;

int pt_pkt_read_mnt(struct pt_packet_mnt *packet, const uint8_t *pos,
      const struct pt_config *config)
{
 if (!packet || !pos || !config)
  return -pte_internal;

 if (config->end < pos + ptps_mnt)
  return -pte_eos;

 packet->payload = pt_pkt_read_value(pos + pt_opcs_mnt, pt_pl_mnt_size);

 return ptps_mnt;
}
