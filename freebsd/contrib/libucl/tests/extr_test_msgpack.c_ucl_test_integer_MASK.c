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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  ucl_object_t ;
typedef  int /*<<< orphan*/  curf ;

/* Variables and functions */
 int INT16_MAX ; 
 int INT32_MAX ; 
 int /*<<< orphan*/  UCL_ARRAY ; 
 int UINT16_MAX ; 
 int UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (double*,int*,int) ; 
 int nelt ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ucl_object_t*
FUNC6 (void)
{
	ucl_object_t *res;
	int count, i;
	uint64_t cur;
	double curf;

	res = FUNC5 (UCL_ARRAY);
	count = FUNC1 () % nelt;

	for (i = 0; i < count; i ++) {
		cur = ((uint64_t)FUNC1 ()) << 32 | FUNC1 ();
		FUNC2 (res, FUNC4 (cur % 128));
		FUNC2 (res, FUNC4 (-(cur % 128)));
		cur = ((uint64_t)FUNC1 ()) << 32 | FUNC1 ();
		FUNC2 (res, FUNC4 (cur % UINT16_MAX));
		FUNC2 (res, FUNC4 (-(cur % INT16_MAX)));
		cur = ((uint64_t)FUNC1 ()) << 32 | FUNC1 ();
		FUNC2 (res, FUNC4 (cur % UINT32_MAX));
		FUNC2 (res, FUNC4 (-(cur % INT32_MAX)));
		cur = ((uint64_t)FUNC1 ()) << 32 | FUNC1 ();
		FUNC2 (res, FUNC4 (cur));
		FUNC2 (res, FUNC4 (-cur));
		/* Double version */
		cur = ((uint64_t)FUNC1 ()) << 32 | FUNC1 ();
		curf = (cur % 128) / 19 * 16;
		FUNC2 (res, FUNC3 (curf));
		cur = ((uint64_t)FUNC1 ()) << 32 | FUNC1 ();
		curf = -(cur % 128) / 19 * 16;
		FUNC2 (res, FUNC3 (curf));
		cur = ((uint64_t)FUNC1 ()) << 32 | FUNC1 ();
		curf = (cur % 65536) / 19 * 16;
		FUNC2 (res, FUNC3 (curf));
		FUNC2 (res, FUNC3 (-curf));
		cur = ((uint64_t)FUNC1 ()) << 32 | FUNC1 ();
		curf = (cur % INT32_MAX) / 19 * 16;
		FUNC2 (res, FUNC3 (curf));
		cur = ((uint64_t)FUNC1 ()) << 32 | FUNC1 ();
		FUNC0 (&curf, &cur, sizeof (curf));
		FUNC2 (res, FUNC4 (cur));
	}

	return res;
}