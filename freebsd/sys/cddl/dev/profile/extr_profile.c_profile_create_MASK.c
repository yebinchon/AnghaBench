#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int prof_kind; int /*<<< orphan*/  prof_id; int /*<<< orphan*/  prof_cyclic; scalar_t__ prof_interval; int /*<<< orphan*/  prof_name; } ;
typedef  TYPE_1__ profile_probe_t ;
typedef  scalar_t__ hrtime_t ;

/* Variables and functions */
 int /*<<< orphan*/  CYCLIC_NONE ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  profile_aframes ; 
 int /*<<< orphan*/  profile_id ; 
 scalar_t__ profile_interval_min ; 
 scalar_t__ profile_max ; 
 scalar_t__ profile_total ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7(hrtime_t interval, char *name, int kind)
{
	profile_probe_t *prof;

	if (interval < profile_interval_min)
		return;

	if (FUNC3(profile_id, NULL, NULL, name) != 0)
		return;

	FUNC0(&profile_total, 1);
	if (profile_total > profile_max) {
		FUNC0(&profile_total, -1);
		return;
	}

	prof = FUNC4(sizeof (profile_probe_t), KM_SLEEP);
	(void) FUNC6(prof->prof_name, name);
#ifdef illumos
	prof->prof_interval = interval;
	prof->prof_cyclic = CYCLIC_NONE;
#else
	prof->prof_interval = FUNC5(interval);
	FUNC1(&prof->prof_cyclic, 1);
#endif
	prof->prof_kind = kind;
	prof->prof_id = FUNC2(profile_id,
	    NULL, NULL, name,
	    profile_aframes, prof);
}