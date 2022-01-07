
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_3__ {int d86_error; int (* d86_get_byte ) (int ) ;int* d86_bytes; int d86_len; int d86_data; } ;
typedef TYPE_1__ dis86_t ;


 int stub1 (int ) ;

__attribute__((used)) static void
dtrace_get_SIB(dis86_t *x, uint_t *ss, uint_t *index, uint_t *base)
{
 int byte;

 if (x->d86_error)
  return;

 byte = x->d86_get_byte(x->d86_data);
 if (byte < 0) {
  x->d86_error = 1;
  return;
 }
 x->d86_bytes[x->d86_len++] = byte;

 *base = byte & 0x7;
 *index = (byte >> 3) & 0x7;
 *ss = (byte >> 6) & 0x3;
}
