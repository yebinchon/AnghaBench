
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int pos; int config; int tnt; } ;
struct pt_packet_tnt {int dummy; } ;


 int pt_pkt_read_tnt_64 (struct pt_packet_tnt*,int,int *) ;
 int pt_tnt_cache_update_tnt (int *,struct pt_packet_tnt*,int *) ;
 int pte_internal ;

int pt_qry_decode_tnt_64(struct pt_query_decoder *decoder)
{
 struct pt_packet_tnt packet;
 int size, errcode;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_tnt_64(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 errcode = pt_tnt_cache_update_tnt(&decoder->tnt, &packet,
       &decoder->config);
 if (errcode < 0)
  return errcode;

 decoder->pos += size;
 return 0;
}
