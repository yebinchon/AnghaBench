
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int pos; int config; } ;
struct pt_packet {int dummy; } ;


 int pt_pkt_read_unknown (struct pt_packet*,int,int *) ;
 int pte_internal ;

int pt_qry_decode_unknown(struct pt_query_decoder *decoder)
{
 struct pt_packet packet;
 int size;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_unknown(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 decoder->pos += size;
 return 0;
}
