
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct pt_packet_decoder {int config; int pos; } ;
struct TYPE_2__ {int vmcs; } ;
struct pt_packet {int size; int type; TYPE_1__ payload; } ;


 int ppt_vmcs ;
 int pt_pkt_read_vmcs (int *,int ,int *) ;
 int pte_internal ;

int pt_pkt_decode_vmcs(struct pt_packet_decoder *decoder,
         struct pt_packet *packet)
{
 int size;

 if (!decoder || !packet)
  return -pte_internal;

 size = pt_pkt_read_vmcs(&packet->payload.vmcs, decoder->pos,
          &decoder->config);
 if (size < 0)
  return size;

 packet->type = ppt_vmcs;
 packet->size = (uint8_t) size;

 return size;
}
