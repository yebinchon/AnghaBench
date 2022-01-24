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
typedef  int /*<<< orphan*/  qsort_block ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,size_t,int /*<<< orphan*/ ,int (*) (void*,void const*,void const*)) ; 

void
FUNC2(void *base, size_t nel, size_t width, qsort_block compar)
{
	FUNC1(base, nel, width, compar,
		(int (*)(void *, const void *, const void *))
		FUNC0(compar));
}