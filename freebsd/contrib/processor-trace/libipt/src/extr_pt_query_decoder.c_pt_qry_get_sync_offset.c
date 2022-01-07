
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int * begin; } ;
struct pt_query_decoder {int * sync; TYPE_1__ config; } ;
typedef scalar_t__ int64_t ;


 int pte_invalid ;
 int pte_nosync ;

int pt_qry_get_sync_offset(const struct pt_query_decoder *decoder,
      uint64_t *offset)
{
 const uint8_t *begin, *sync;

 if (!decoder || !offset)
  return -pte_invalid;

 begin = decoder->config.begin;
 sync = decoder->sync;

 if (!sync)
  return -pte_nosync;

 *offset = (uint64_t) (int64_t) (sync - begin);
 return 0;
}
