
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_packet_ptw {int plc; int ip; int payload; } ;
struct pt_config {int const* end; } ;


 int pt_opcs_ptw ;
 int pt_opm_ptw_ip ;
 int pt_opm_ptw_pb_shr ;
 int pt_opm_ptw_pb_shr_mask ;
 int pt_pkt_read_value (int const*,int) ;
 int pt_ptw_size (int) ;
 int pte_eos ;
 int pte_internal ;

int pt_pkt_read_ptw(struct pt_packet_ptw *packet, const uint8_t *pos,
      const struct pt_config *config)
{
 uint8_t opc, plc;
 int size;

 if (!packet || !pos || !config)
  return -pte_internal;


 pos++;

 opc = *pos++;
 plc = (opc >> pt_opm_ptw_pb_shr) & pt_opm_ptw_pb_shr_mask;

 size = pt_ptw_size(plc);
 if (size < 0)
  return size;

 if (config->end < pos + size)
  return -pte_eos;

 packet->payload = pt_pkt_read_value(pos, size);
 packet->plc = plc;
 packet->ip = opc & pt_opm_ptw_ip ? 1 : 0;

 return pt_opcs_ptw + size;
}
