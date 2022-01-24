#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ prof_kind; int /*<<< orphan*/  prof_cyclic; } ;
typedef  TYPE_1__ profile_probe_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PROF_PROFILE ; 
 scalar_t__ PROF_TICK ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(void *arg, dtrace_id_t id, void *parg)
{
	profile_probe_t *prof = parg;

	if (prof->prof_kind == PROF_TICK) {
		FUNC0(FUNC1(&prof->prof_cyclic));
		FUNC3(&prof->prof_cyclic);
		FUNC2(&prof->prof_cyclic);
	} else {
		FUNC0(prof->prof_kind == PROF_PROFILE);
		FUNC4(prof);
	}
}