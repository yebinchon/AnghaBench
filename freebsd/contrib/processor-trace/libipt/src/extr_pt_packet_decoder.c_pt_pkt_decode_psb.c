
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_packet_decoder {int config; int pos; } ;
struct pt_packet {int size; int type; } ;


 int ppt_psb ;
 int pt_pkt_read_psb (int ,int *) ;
 int pte_internal ;

int pt_pkt_decode_psb(struct pt_packet_decoder *decoder,
        struct pt_packet *packet)
{
 int size;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_psb(decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 packet->type = ppt_psb;
 packet->size = (uint8_t) size;

 return size;
}
