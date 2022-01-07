
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* dp; int used; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int MP_MASK ;
 int mp_zero (TYPE_1__*) ;

__attribute__((used)) static void mp_set (mp_int * a, mp_digit b)
{
  mp_zero (a);
  a->dp[0] = b & MP_MASK;
  a->used = (a->dp[0] != 0) ? 1 : 0;
}
