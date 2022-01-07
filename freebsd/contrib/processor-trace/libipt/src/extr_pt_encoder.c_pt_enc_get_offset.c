
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int * begin; } ;
struct pt_encoder {TYPE_1__ config; int * pos; } ;
typedef scalar_t__ int64_t ;


 int pte_internal ;
 int pte_invalid ;

int pt_enc_get_offset(const struct pt_encoder *encoder, uint64_t *offset)
{
 const uint8_t *raw, *begin;

 if (!encoder || !offset)
  return -pte_invalid;


 raw = encoder->pos;
 if (!raw)
  return -pte_internal;

 begin = encoder->config.begin;
 if (!begin)
  return -pte_internal;

 *offset = (uint64_t) (int64_t) (raw - begin);
 return 0;
}
