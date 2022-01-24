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
struct TYPE_3__ {scalar_t__ prof_cyclic; int /*<<< orphan*/ * prof_pcpus; } ;
typedef  TYPE_1__ profile_probe_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CYCLIC_NONE ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int profile_total ; 

__attribute__((used)) static void
FUNC4(void *arg, dtrace_id_t id, void *parg)
{
	profile_probe_t *prof = parg;

#ifdef illumos
	ASSERT(prof->prof_cyclic == CYCLIC_NONE);
#else
	FUNC0(!FUNC2(&prof->prof_cyclic) && prof->prof_pcpus == NULL);
#endif
	FUNC3(prof, sizeof (profile_probe_t));

	FUNC0(profile_total >= 1);
	FUNC1(&profile_total, -1);
}