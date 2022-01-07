
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int * end; int * begin; } ;
struct pt_encoder {TYPE_1__ config; int * pos; } ;


 int pte_eos ;
 int pte_internal ;

__attribute__((used)) static int pt_reserve(const struct pt_encoder *encoder, unsigned int size)
{
 const uint8_t *begin, *end, *pos;

 if (!encoder)
  return -pte_internal;


 pos = encoder->pos;
 if (!pos)
  return -pte_internal;

 begin = encoder->config.begin;
 end = encoder->config.end;

 pos += size;
 if (pos < begin || end < pos)
  return -pte_eos;

 return 0;
}
