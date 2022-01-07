
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int d86_numopnds; int d86_error; int (* d86_get_byte ) (int ) ;int* d86_bytes; size_t d86_len; int d86_imm_bytes; TYPE_1__* d86_opnd; int d86_data; int d86_opnd_size; } ;
typedef TYPE_2__ dis86_t ;
struct TYPE_4__ {int d86_value; int d86_value_size; int d86_mode; } ;







 int MODE_SIGNED ;

 int SIZE16 ;
 int SIZE32 ;




 int stub1 (int ) ;

__attribute__((used)) static void
dtrace_imm_opnd(dis86_t *x, int wbit, int size, int opindex)
{
 int i;
 int byte;
 int valsize;

 if (x->d86_numopnds < opindex + 1)
  x->d86_numopnds = opindex + 1;

 switch (wbit) {
 case 137:
  valsize = 1;
  break;
 case 134:
  if (x->d86_opnd_size == SIZE16)
   valsize = 2;
  else if (x->d86_opnd_size == SIZE32)
   valsize = 4;
  else
   valsize = 8;
  break;
 case 133:
 case 129:
 case 128:
 case 132:
 case 136:
 case 135:
 case 131:
  valsize = size;
  break;
 case 130:
  valsize = 2;
  break;
 }
 if (valsize < size)
  valsize = size;

 if (x->d86_error)
  return;
 x->d86_opnd[opindex].d86_value = 0;
 for (i = 0; i < size; ++i) {
  byte = x->d86_get_byte(x->d86_data);
  if (byte < 0) {
   x->d86_error = 1;
   return;
  }
  x->d86_bytes[x->d86_len++] = byte;
  x->d86_opnd[opindex].d86_value |= (uint64_t)byte << (i * 8);
 }

 if (x->d86_bytes[x->d86_len - 1] & 0x80) {
  for (; i < sizeof (uint64_t); i++)
   x->d86_opnd[opindex].d86_value |=
       (uint64_t)0xff << (i * 8);
 }





}
