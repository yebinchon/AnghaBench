
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_packet_decoder {int config; } ;
struct pt_config {int dummy; } ;


 int memset (struct pt_packet_decoder*,int ,int) ;
 int pt_config_from_user (int *,struct pt_config const*) ;
 int pte_invalid ;

int pt_pkt_decoder_init(struct pt_packet_decoder *decoder,
   const struct pt_config *config)
{
 int errcode;

 if (!decoder || !config)
  return -pte_invalid;

 memset(decoder, 0, sizeof(*decoder));

 errcode = pt_config_from_user(&decoder->config, config);
 if (errcode < 0)
  return errcode;

 return 0;
}
