
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_packet_decoder {int config; int pos; } ;
struct pt_packet {int dummy; } ;


 int pt_pkt_read_unknown (struct pt_packet*,int ,int *) ;
 int pte_internal ;

int pt_pkt_decode_unknown(struct pt_packet_decoder *decoder,
     struct pt_packet *packet)
{
 int size;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_unknown(packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 return size;
}
