
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_packet_decoder {int dummy; } ;
struct pt_packet {int size; int type; } ;


 int ppt_psbend ;
 int pte_internal ;
 int ptps_psbend ;

int pt_pkt_decode_psbend(struct pt_packet_decoder *decoder,
    struct pt_packet *packet)
{
 (void) decoder;

 if (!packet)
  return -pte_internal;

 packet->type = ppt_psbend;
 packet->size = ptps_psbend;

 return ptps_psbend;
}
