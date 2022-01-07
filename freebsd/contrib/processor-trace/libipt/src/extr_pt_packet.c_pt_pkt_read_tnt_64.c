
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct pt_packet_tnt {int dummy; } ;
struct pt_config {int const* end; } ;


 int pt_opcs_tnt_64 ;
 int pt_pkt_read_tnt (struct pt_packet_tnt*,int ) ;
 int pt_pkt_read_value (int const*,int ) ;
 int pt_pl_tnt_64_size ;
 int pte_eos ;
 int pte_internal ;
 int ptps_tnt_64 ;

int pt_pkt_read_tnt_64(struct pt_packet_tnt *packet, const uint8_t *pos,
         const struct pt_config *config)
{
 uint64_t payload;
 int errcode;

 if (!pos || !config)
  return -pte_internal;

 if (config->end < pos + ptps_tnt_64)
  return -pte_eos;

 payload = pt_pkt_read_value(pos + pt_opcs_tnt_64, pt_pl_tnt_64_size);

 errcode = pt_pkt_read_tnt(packet, payload);
 if (errcode < 0)
  return errcode;

 return ptps_tnt_64;
}
