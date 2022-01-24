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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_SPARE2 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curcpu ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(int busy)
{

	FUNC0(KTR_SPARE2, "cpu_idle(%d) at %d", busy, curcpu);
	FUNC5();
#ifndef NO_EVENTTIMERS
	if (!busy)
		FUNC2();
#endif
	if (!FUNC4())
		FUNC3(0);
#ifndef NO_EVENTTIMERS
	if (!busy)
		FUNC1();
#endif
	FUNC6();
	FUNC0(KTR_SPARE2, "cpu_idle(%d) at %d done", busy, curcpu);
}