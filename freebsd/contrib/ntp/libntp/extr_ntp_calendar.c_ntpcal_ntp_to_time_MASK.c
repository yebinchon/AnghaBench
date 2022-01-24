#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ lo; int /*<<< orphan*/  hi; } ;
struct TYPE_6__ {int Q_s; TYPE_1__ D_s; int /*<<< orphan*/  q_s; } ;
typedef  TYPE_2__ vint64 ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 scalar_t__ JAN_1970 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  const FUNC2 () ; 
 TYPE_2__ FUNC3 (int /*<<< orphan*/ *) ; 

vint64
FUNC4(
	uint32_t	ntp,
	const time_t *	pivot
	)
{
	vint64 res;

#   if defined(HAVE_INT64)

	res.q_s = (pivot != NULL)
		      ? *pivot
		      : now();
	res.Q_s -= 0x80000000u;		/* unshift of half range */
	ntp	-= (uint32_t)JAN_1970;	/* warp into UN*X domain */
	ntp	-= res.D_s.lo;		/* cycle difference	 */
	res.Q_s += (uint64_t)ntp;	/* get expanded time	 */

#   else /* no 64bit scalars */

	time_t tmp;

	tmp = (pivot != NULL)
		  ? *pivot
		  : FUNC2();
	res = FUNC3(&tmp);
	FUNC1(res.D_s.hi, res.D_s.lo, 0, 0x80000000u);
	ntp -= (uint32_t)JAN_1970;	/* warp into UN*X domain */
	ntp -= res.D_s.lo;		/* cycle difference	 */
	FUNC0(res.D_s.hi, res.D_s.lo, 0, ntp);

#   endif /* no 64bit scalars */

	return res;
}