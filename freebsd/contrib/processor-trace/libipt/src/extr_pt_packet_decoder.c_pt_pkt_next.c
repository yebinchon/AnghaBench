
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_packet_decoder {int pos; int config; } ;
struct pt_packet {int dummy; } ;
struct pt_decoder_function {int (* packet ) (struct pt_packet_decoder*,struct pt_packet*) ;} ;
typedef int pkt ;


 int pkt_to_user (struct pt_packet*,size_t,struct pt_packet*) ;
 int pt_df_fetch (struct pt_decoder_function const**,int,int *) ;
 int pte_internal ;
 int pte_invalid ;
 int stub1 (struct pt_packet_decoder*,struct pt_packet*) ;

int pt_pkt_next(struct pt_packet_decoder *decoder, struct pt_packet *packet,
  size_t psize)
{
 const struct pt_decoder_function *dfun;
 struct pt_packet pkt, *ppkt;
 int errcode, size;

 if (!packet || !decoder)
  return -pte_invalid;

 ppkt = psize == sizeof(pkt) ? packet : &pkt;

 errcode = pt_df_fetch(&dfun, decoder->pos, &decoder->config);
 if (errcode < 0)
  return errcode;

 if (!dfun)
  return -pte_internal;

 if (!dfun->packet)
  return -pte_internal;

 size = dfun->packet(decoder, ppkt);
 if (size < 0)
  return size;

 errcode = pkt_to_user(packet, psize, ppkt);
 if (errcode < 0)
  return errcode;

 decoder->pos += size;

 return size;
}
