
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ const* end; } ;
struct pt_query_decoder {scalar_t__* pos; TYPE_1__ config; } ;
struct pt_packet_cyc {scalar_t__ value; } ;


 scalar_t__ const pt_ext_ovf ;
 int pte_internal ;

__attribute__((used)) static int check_erratum_skd007(struct pt_query_decoder *decoder,
    const struct pt_packet_cyc *packet, int size)
{
 const uint8_t *pos;
 uint16_t payload;

 if (!decoder || !packet || size < 0)
  return -pte_internal;


 if (size != 2)
  return 0;

 payload = (uint16_t) packet->value;


 if ((payload & ~0x1f) != 0x20)
  return 0;


 pos = decoder->pos + size;
 if (decoder->config.end <= pos)
  return 0;


 if (*pos != pt_ext_ovf)
  return 0;







 return 1;
}
