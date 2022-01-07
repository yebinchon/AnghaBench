
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_2__ {int * end; int * begin; } ;
struct pt_encoder {int * pos; TYPE_1__ config; } ;


 int pte_eos ;
 int pte_invalid ;

int pt_enc_sync_set(struct pt_encoder *encoder, uint64_t offset)
{
 uint8_t *begin, *end, *pos;

 if (!encoder)
  return -pte_invalid;

 begin = encoder->config.begin;
 end = encoder->config.end;
 pos = begin + offset;

 if (end < pos || pos < begin)
  return -pte_eos;

 encoder->pos = pos;
 return 0;
}
