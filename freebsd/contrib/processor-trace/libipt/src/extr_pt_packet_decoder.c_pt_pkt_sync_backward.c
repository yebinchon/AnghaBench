
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_2__ {int const* end; } ;
struct pt_packet_decoder {int const* pos; int const* sync; TYPE_1__ config; } ;


 int pt_sync_backward (int const**,int const*,TYPE_1__*) ;
 int pte_invalid ;

int pt_pkt_sync_backward(struct pt_packet_decoder *decoder)
{
 const uint8_t *pos, *sync;
 int errcode;

 if (!decoder)
  return -pte_invalid;

 pos = decoder->pos;
 if (!pos)
  pos = decoder->config.end;

 errcode = pt_sync_backward(&sync, pos, &decoder->config);
 if (errcode < 0)
  return errcode;

 decoder->sync = sync;
 decoder->pos = sync;

 return 0;
}
