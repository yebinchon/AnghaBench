
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ bdm70; } ;
struct TYPE_6__ {TYPE_1__ errata; } ;
struct pt_query_decoder {int enabled; TYPE_2__ config; int ip; int pos; } ;
struct pt_packet_ip {scalar_t__ ipc; } ;


 int check_erratum_bdm70 (int ,TYPE_2__*) ;
 scalar_t__ pt_ipc_suppressed ;
 int pt_last_ip_update_ip (int *,struct pt_packet_ip*,TYPE_2__*) ;
 int pt_pkt_read_ip (struct pt_packet_ip*,int ,TYPE_2__*) ;
 int pt_qry_consume_fup (struct pt_query_decoder*,int) ;
 int pte_internal ;

int pt_qry_header_fup(struct pt_query_decoder *decoder)
{
 struct pt_packet_ip packet;
 int errcode, size;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_ip(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 if (decoder->config.errata.bdm70 && !decoder->enabled) {
  errcode = check_erratum_bdm70(decoder->pos + size,
           &decoder->config);
  if (errcode < 0)
   return errcode;

  if (errcode)
   return pt_qry_consume_fup(decoder, size);
 }

 errcode = pt_last_ip_update_ip(&decoder->ip, &packet, &decoder->config);
 if (errcode < 0)
  return errcode;


 if (packet.ipc != pt_ipc_suppressed)
  decoder->enabled = 1;

 return pt_qry_consume_fup(decoder, size);
}
