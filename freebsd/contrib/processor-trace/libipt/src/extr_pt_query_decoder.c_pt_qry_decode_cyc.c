
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ skd007; } ;
struct pt_config {TYPE_1__ errata; } ;
struct pt_query_decoder {int pos; int tcal; int time; struct pt_config config; } ;
struct pt_packet_cyc {int dummy; } ;


 int check_erratum_skd007 (struct pt_query_decoder*,struct pt_packet_cyc*,int) ;
 int pt_pkt_read_cyc (struct pt_packet_cyc*,int,struct pt_config*) ;
 int pt_qry_apply_cyc (int *,int *,struct pt_packet_cyc*,struct pt_config*) ;
 int pte_internal ;

int pt_qry_decode_cyc(struct pt_query_decoder *decoder)
{
 struct pt_packet_cyc packet;
 struct pt_config *config;
 int size, errcode;

 if (!decoder)
  return -pte_internal;

 config = &decoder->config;

 size = pt_pkt_read_cyc(&packet, decoder->pos, config);
 if (size < 0)
  return size;

 if (config->errata.skd007) {
  errcode = check_erratum_skd007(decoder, &packet, size);
  if (errcode < 0)
   return errcode;




  if (errcode) {



   decoder->pos += 1;
   return 0;
  }
 }

 errcode = pt_qry_apply_cyc(&decoder->time, &decoder->tcal,
       &packet, config);
 if (errcode < 0)
  return errcode;

 decoder->pos += size;
 return 0;
}
