
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alloc; int * dp; scalar_t__ used; int sign; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int MP_ZPOS ;

__attribute__((used)) static void mp_zero (mp_int * a)
{
  int n;
  mp_digit *tmp;

  a->sign = MP_ZPOS;
  a->used = 0;

  tmp = a->dp;
  for (n = 0; n < a->alloc; n++) {
     *tmp++ = 0;
  }
}
