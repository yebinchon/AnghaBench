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
struct TYPE_5__ {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct TYPE_6__ {TYPE_1__ D_s; int /*<<< orphan*/  q_s; } ;
typedef  TYPE_2__ vint64 ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 

vint64
FUNC1(
	const vint64 * lhs,
	int32_t        rhs
	)
{
	vint64 res;

	res = *lhs;
#if defined(HAVE_INT64)
	res.q_s += rhs;
#else
	FUNC0(res.D_s.hi, res.D_s.lo,  -(rhs < 0), rhs);
#endif
	return res;
}