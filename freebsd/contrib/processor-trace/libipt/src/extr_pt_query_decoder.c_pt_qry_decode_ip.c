
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int config; int ip; int pos; } ;
struct pt_packet_ip {int dummy; } ;


 int pt_last_ip_update_ip (int *,struct pt_packet_ip*,int *) ;
 int pt_pkt_read_ip (struct pt_packet_ip*,int ,int *) ;
 int pte_internal ;

__attribute__((used)) static int pt_qry_decode_ip(struct pt_query_decoder *decoder)
{
 struct pt_packet_ip packet;
 int errcode, size;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_ip(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 errcode = pt_last_ip_update_ip(&decoder->ip, &packet, &decoder->config);
 if (errcode < 0)
  return errcode;



 return size;
}
