#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int* dp; } ;
typedef  TYPE_1__ mp_int ;

/* Variables and functions */
 int MP_OKAY ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5 (mp_int * a, unsigned char *b)
{
  int     x, res;
  mp_int  t;

  if ((res = FUNC3 (&t, a)) != MP_OKAY) {
    return res;
  }

  x = 0;
  while (FUNC4 (&t) == 0) {
#ifndef MP_8BIT
      b[x++] = (unsigned char) (t.dp[0] & 255);
#else
      b[x++] = (unsigned char) (t.dp[0] | ((t.dp[1] & 0x01) << 7));
#endif
    if ((res = FUNC2 (&t, 8, &t, NULL)) != MP_OKAY) {
      FUNC1 (&t);
      return res;
    }
  }
  FUNC0 (b, x);
  FUNC1 (&t);
  return MP_OKAY;
}