
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int alloc; int used; int* dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int DIGIT_BIT ;
 int MP_MASK ;
 int MP_OKAY ;
 int mp_clamp (TYPE_1__*) ;
 int mp_copy (TYPE_1__*,TYPE_1__*) ;
 int mp_grow (TYPE_1__*,int) ;
 int mp_lshd (TYPE_1__*,int) ;

__attribute__((used)) static int mp_mul_2d (mp_int * a, int b, mp_int * c)
{
  mp_digit d;
  int res;


  if (a != c) {
     if ((res = mp_copy (a, c)) != MP_OKAY) {
       return res;
     }
  }

  if (c->alloc < (int)(c->used + b/DIGIT_BIT + 1)) {
     if ((res = mp_grow (c, c->used + b / DIGIT_BIT + 1)) != MP_OKAY) {
       return res;
     }
  }


  if (b >= (int)DIGIT_BIT) {
    if ((res = mp_lshd (c, b / DIGIT_BIT)) != MP_OKAY) {
      return res;
    }
  }


  d = (mp_digit) (b % DIGIT_BIT);
  if (d != 0) {
    register mp_digit *tmpc, shift, mask, r, rr;
    register int x;


    mask = (((mp_digit)1) << d) - 1;


    shift = DIGIT_BIT - d;


    tmpc = c->dp;


    r = 0;
    for (x = 0; x < c->used; x++) {

      rr = (*tmpc >> shift) & mask;


      *tmpc = ((*tmpc << d) | r) & MP_MASK;
      ++tmpc;


      r = rr;
    }


    if (r != 0) {
       c->dp[(c->used)++] = r;
    }
  }
  mp_clamp (c);
  return MP_OKAY;
}
