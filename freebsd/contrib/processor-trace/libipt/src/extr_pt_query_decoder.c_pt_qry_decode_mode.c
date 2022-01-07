
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_query_decoder {int pos; int config; } ;
struct TYPE_2__ {int tsx; int exec; } ;
struct pt_packet_mode {int leaf; TYPE_1__ bits; } ;




 int pt_pkt_read_mode (struct pt_packet_mode*,int,int *) ;
 int pt_qry_decode_mode_exec (struct pt_query_decoder*,int *) ;
 int pt_qry_decode_mode_tsx (struct pt_query_decoder*,int *) ;
 int pte_internal ;

int pt_qry_decode_mode(struct pt_query_decoder *decoder)
{
 struct pt_packet_mode packet;
 int size, errcode;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_mode(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 errcode = 0;
 switch (packet.leaf) {
 case 129:
  errcode = pt_qry_decode_mode_exec(decoder, &packet.bits.exec);
  break;

 case 128:
  errcode = pt_qry_decode_mode_tsx(decoder, &packet.bits.tsx);
  break;
 }

 if (errcode < 0)
  return errcode;

 decoder->pos += size;
 return 0;
}
