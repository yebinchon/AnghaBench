
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_2__ {int * end; int * begin; } ;
struct pt_packet_decoder {int const* pos; int const* sync; TYPE_1__ config; } ;


 int pte_eos ;
 int pte_invalid ;

int pt_pkt_sync_set(struct pt_packet_decoder *decoder, uint64_t offset)
{
 const uint8_t *begin, *end, *pos;

 if (!decoder)
  return -pte_invalid;

 begin = decoder->config.begin;
 end = decoder->config.end;
 pos = begin + offset;

 if (end < pos || pos < begin)
  return -pte_eos;

 decoder->sync = pos;
 decoder->pos = pos;

 return 0;
}
