
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const uint8_t ;
typedef int uint64_t ;
struct TYPE_2__ {int const* end; } ;
struct pt_query_decoder {int const* pos; TYPE_1__ config; } ;


 int pt_qry_start (struct pt_query_decoder*,int const*,int *) ;
 int pt_sync_backward (int const**,int const*,TYPE_1__*) ;
 int pte_eos ;
 int pte_invalid ;

int pt_qry_sync_backward(struct pt_query_decoder *decoder, uint64_t *ip)
{
 const uint8_t *start, *sync;
 int errcode;

 if (!decoder)
  return -pte_invalid;

 start = decoder->pos;
 if (!start)
  start = decoder->config.end;

 sync = start;
 for (;;) {
  errcode = pt_sync_backward(&sync, sync, &decoder->config);
  if (errcode < 0)
   return errcode;

  errcode = pt_qry_start(decoder, sync, ip);
  if (errcode < 0) {



   if (errcode == -pte_eos)
    continue;

   return errcode;
  }






  if (decoder->pos != start)
   break;
 }

 return 0;
}
