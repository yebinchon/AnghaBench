#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mp_int ;

/* Variables and functions */
 int MP_OKAY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(mp_int *a, mp_int *d)
{
   int    res;
   mp_int tmp;

   if ((res = FUNC3(&tmp)) != MP_OKAY) {
      return res;
   }

   if ((res = FUNC0(&tmp, FUNC2(a))) != MP_OKAY) {
      goto ERR;
   }

   if ((res = FUNC4(&tmp, a, d)) != MP_OKAY) {
      goto ERR;
   }

ERR:
   FUNC1(&tmp);
   return res;
}