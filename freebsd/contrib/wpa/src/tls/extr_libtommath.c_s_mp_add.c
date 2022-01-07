
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int used; int alloc; int* dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 scalar_t__ DIGIT_BIT ;
 int MP_MASK ;
 int MP_OKAY ;
 int mp_clamp (TYPE_1__*) ;
 int mp_grow (TYPE_1__*,int) ;

__attribute__((used)) static int s_mp_add (mp_int * a, mp_int * b, mp_int * c)
{
  mp_int *x;
  int olduse, res, min, max;




  if (a->used > b->used) {
    min = b->used;
    max = a->used;
    x = a;
  } else {
    min = a->used;
    max = b->used;
    x = b;
  }


  if (c->alloc < max + 1) {
    if ((res = mp_grow (c, max + 1)) != MP_OKAY) {
      return res;
    }
  }


  olduse = c->used;
  c->used = max + 1;

  {
    register mp_digit u, *tmpa, *tmpb, *tmpc;
    register int i;




    tmpa = a->dp;


    tmpb = b->dp;


    tmpc = c->dp;


    u = 0;
    for (i = 0; i < min; i++) {

      *tmpc = *tmpa++ + *tmpb++ + u;


      u = *tmpc >> ((mp_digit)DIGIT_BIT);


      *tmpc++ &= MP_MASK;
    }




    if (min != max) {
      for (; i < max; i++) {

        *tmpc = x->dp[i] + u;


        u = *tmpc >> ((mp_digit)DIGIT_BIT);


        *tmpc++ &= MP_MASK;
      }
    }


    *tmpc++ = u;


    for (i = c->used; i < olduse; i++) {
      *tmpc++ = 0;
    }
  }

  mp_clamp (c);
  return MP_OKAY;
}
