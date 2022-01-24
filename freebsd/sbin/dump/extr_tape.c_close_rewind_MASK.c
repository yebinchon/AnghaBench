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
typedef  scalar_t__ time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ nexttape ; 
 int /*<<< orphan*/  nogripe ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ tapeno ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  tstart_writing ; 

void
FUNC6()
{
	time_t tstart_changevol, tend_changevol;

	FUNC5();
	if (nexttape)
		return;
	(void)FUNC4((time_t *)&(tstart_changevol));
	if (!nogripe) {
		FUNC2("Change Volumes: Mount volume #%d\n", tapeno+1);
		FUNC0("CHANGE DUMP VOLUMES!\a\a\n");
	}
	while (!FUNC3("Is the new volume mounted and ready to go?"))
		if (FUNC3("Do you want to abort?")) {
			FUNC1(0);
			/*NOTREACHED*/
		}
	(void)FUNC4((time_t *)&(tend_changevol));
	if ((tstart_changevol != (time_t)-1) && (tend_changevol != (time_t)-1))
		tstart_writing += (tend_changevol - tstart_changevol);
}