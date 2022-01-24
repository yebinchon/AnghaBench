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
typedef  int /*<<< orphan*/  restrict_u ;

/* Variables and functions */
 size_t INC_RESLIST4 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t V4_SIZEOF_RESTRICT_U ; 
 int /*<<< orphan*/ * FUNC3 (size_t const,size_t const) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  resfree4 ; 

__attribute__((used)) static restrict_u *
FUNC4(void)
{
	const size_t	cb = V4_SIZEOF_RESTRICT_U;
	const size_t	count = INC_RESLIST4;
	restrict_u *	rl;
	restrict_u *	res;
	size_t		i;

	FUNC2(res, resfree4, link);
	if (res != NULL)
		return res;

	rl = FUNC3(count, cb);
	/* link all but the first onto free list */
	res = (void *)((char *)rl + (count - 1) * cb);
	for (i = count - 1; i > 0; i--) {
		FUNC1(resfree4, res, link);
		res = (void *)((char *)res - cb);
	}
	FUNC0(rl == res);
	/* allocate the first */
	return res;
}