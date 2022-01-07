
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int used; scalar_t__* dp; int sign; } ;
typedef TYPE_1__ mp_int ;


 int MP_ZPOS ;

__attribute__((used)) static void mp_clamp (mp_int * a)
{



  while (a->used > 0 && a->dp[a->used - 1] == 0) {
    --(a->used);
  }


  if (a->used == 0) {
    a->sign = MP_ZPOS;
  }
}
