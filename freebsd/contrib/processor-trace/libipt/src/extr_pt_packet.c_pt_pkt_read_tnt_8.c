
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_packet_tnt {int dummy; } ;
struct pt_config {int dummy; } ;


 int const pt_opm_tnt_8_shr ;
 int pt_pkt_read_tnt (struct pt_packet_tnt*,int const) ;
 int pte_internal ;
 int ptps_tnt_8 ;

int pt_pkt_read_tnt_8(struct pt_packet_tnt *packet, const uint8_t *pos,
        const struct pt_config *config)
{
 int errcode;

 (void) config;

 if (!pos)
  return -pte_internal;

 errcode = pt_pkt_read_tnt(packet, pos[0] >> pt_opm_tnt_8_shr);
 if (errcode < 0)
  return errcode;

 return ptps_tnt_8;
}
