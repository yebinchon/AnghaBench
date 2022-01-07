
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int pos; int config; int tcal; int time; } ;
struct pt_packet_tma {int dummy; } ;


 int pt_pkt_read_tma (struct pt_packet_tma*,int,int *) ;
 int pt_qry_apply_tma (int *,int *,struct pt_packet_tma*,int *) ;
 int pte_internal ;

int pt_qry_decode_tma(struct pt_query_decoder *decoder)
{
 struct pt_packet_tma packet;
 int size, errcode;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_tma(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 errcode = pt_qry_apply_tma(&decoder->time, &decoder->tcal,
       &packet, &decoder->config);
 if (errcode < 0)
  return errcode;

 decoder->pos += size;
 return 0;
}
