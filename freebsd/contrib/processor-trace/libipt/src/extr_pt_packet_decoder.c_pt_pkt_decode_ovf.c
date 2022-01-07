
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_packet_decoder {int dummy; } ;
struct pt_packet {int size; int type; } ;


 int ppt_ovf ;
 int pte_internal ;
 int ptps_ovf ;

int pt_pkt_decode_ovf(struct pt_packet_decoder *decoder,
        struct pt_packet *packet)
{
 (void) decoder;

 if (!packet)
  return -pte_internal;

 packet->type = ppt_ovf;
 packet->size = ptps_ovf;

 return ptps_ovf;
}
