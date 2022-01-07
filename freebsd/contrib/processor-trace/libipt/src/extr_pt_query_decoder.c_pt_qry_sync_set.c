
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_2__ {int * begin; } ;
struct pt_query_decoder {TYPE_1__ config; } ;


 int pt_qry_start (struct pt_query_decoder*,int const*,int*) ;
 int pt_sync_set (int const**,int const*,TYPE_1__*) ;
 int pte_invalid ;

int pt_qry_sync_set(struct pt_query_decoder *decoder, uint64_t *ip,
      uint64_t offset)
{
 const uint8_t *sync, *pos;
 int errcode;

 if (!decoder)
  return -pte_invalid;

 pos = decoder->config.begin + offset;

 errcode = pt_sync_set(&sync, pos, &decoder->config);
 if (errcode < 0)
  return errcode;

 return pt_qry_start(decoder, sync, ip);
}
