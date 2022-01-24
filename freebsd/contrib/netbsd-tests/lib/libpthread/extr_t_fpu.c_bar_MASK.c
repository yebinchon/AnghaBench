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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double,int) ; 
 int N_RECURSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  recursion_depth ; 
 int /*<<< orphan*/  recursion_depth_lock ; 

__attribute__((used)) static void *
FUNC7(void *p)
{
	double d;
	int rc;

	d = FUNC3(FUNC3(2., 3., 5.), FUNC3(7., 11., 13.), FUNC3(17., 19., 23.));
	FUNC0(d, 223092870.);

	FUNC1(FUNC4(&recursion_depth_lock));
	rc = recursion_depth++;
	FUNC1(FUNC5(&recursion_depth_lock));

	if (rc < N_RECURSE)
		FUNC6();
	else
		FUNC2();

	/* NOTREACHED */
	return NULL;
}