
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_2__ {int const* begin; } ;
struct pt_packet_decoder {int const* pos; int const* sync; TYPE_1__ config; } ;
typedef int ptrdiff_t ;


 int pt_sync_forward (int const**,int const*,TYPE_1__*) ;
 int pte_internal ;
 int pte_invalid ;
 int ptps_psb ;

int pt_pkt_sync_forward(struct pt_packet_decoder *decoder)
{
 const uint8_t *pos, *sync, *begin;
 ptrdiff_t space;
 int errcode;

 if (!decoder)
  return -pte_invalid;

 begin = decoder->config.begin;
 sync = decoder->sync;
 pos = decoder->pos;
 if (!pos)
  pos = begin;

 if (pos == sync)
  pos += ptps_psb;

 if (pos < begin)
  return -pte_internal;




 space = pos - begin;
 if (ptps_psb <= space)
  space = ptps_psb - 1;

 pos -= space;

 errcode = pt_sync_forward(&sync, pos, &decoder->config);
 if (errcode < 0)
  return errcode;

 decoder->sync = sync;
 decoder->pos = sync;

 return 0;
}
