#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int* dp; int used; } ;
typedef  TYPE_1__ mp_int ;
typedef  int mp_digit ;

/* Variables and functions */
 int DIGIT_BIT ; 
 int MP_OKAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8 (mp_int * a, int b, mp_int * c, mp_int * d)
{
  mp_digit D, r, rr;
  int     x, res;
  mp_int  t;


  /* if the shift count is <= 0 then we do no work */
  if (b <= 0) {
    res = FUNC2 (a, c);
    if (d != NULL) {
      FUNC7 (d);
    }
    return res;
  }

  if ((res = FUNC4 (&t)) != MP_OKAY) {
    return res;
  }

  /* get the remainder */
  if (d != NULL) {
    if ((res = FUNC5 (a, b, &t)) != MP_OKAY) {
      FUNC1 (&t);
      return res;
    }
  }

  /* copy */
  if ((res = FUNC2 (a, c)) != MP_OKAY) {
    FUNC1 (&t);
    return res;
  }

  /* shift by as many digits in the bit count */
  if (b >= (int)DIGIT_BIT) {
    FUNC6 (c, b / DIGIT_BIT);
  }

  /* shift any bit count < DIGIT_BIT */
  D = (mp_digit) (b % DIGIT_BIT);
  if (D != 0) {
    register mp_digit *tmpc, mask, shift;

    /* mask */
    mask = (((mp_digit)1) << D) - 1;

    /* shift for lsb */
    shift = DIGIT_BIT - D;

    /* alias */
    tmpc = c->dp + (c->used - 1);

    /* carry */
    r = 0;
    for (x = c->used - 1; x >= 0; x--) {
      /* get the lower  bits of this word in a temp */
      rr = *tmpc & mask;

      /* shift the current word and mix in the carry bits from the previous word */
      *tmpc = (*tmpc >> D) | (r << shift);
      --tmpc;

      /* set the carry to the carry bits of the current word found above */
      r = rr;
    }
  }
  FUNC0 (c);
  if (d != NULL) {
    FUNC3 (&t, d);
  }
  FUNC1 (&t);
  return MP_OKAY;
}