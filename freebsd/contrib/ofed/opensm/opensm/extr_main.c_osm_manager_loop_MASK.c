#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  osm_subn_opt_t ;
struct TYPE_6__ {int /*<<< orphan*/  force_heavy_sweep; } ;
struct TYPE_7__ {int /*<<< orphan*/  log; int /*<<< orphan*/  console; TYPE_1__ subn; } ;
typedef  TYPE_2__ osm_opensm_t ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  osm_exit_flag ; 
 scalar_t__ osm_hup_flag ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ osm_usr1_flag ; 

int FUNC7(osm_subn_opt_t * p_opt, osm_opensm_t * p_osm)
{
	int console_init_flag = 0;

	if (FUNC1(p_opt)) {
		if (!FUNC4(p_opt, &p_osm->console, &p_osm->log))
			console_init_flag = 1;
	}

	/*
	   Sit here forever - dwell or do console i/o & cmds
	 */
	while (!osm_exit_flag) {
		if (console_init_flag) {
			if (FUNC2(p_osm))
				console_init_flag = 0;
		} else
			FUNC0(10000);

		if (osm_usr1_flag) {
			osm_usr1_flag = 0;
			FUNC5(&(p_osm->log));
		}
		if (osm_hup_flag) {
			osm_hup_flag = 0;
			/* a HUP signal should only start a new heavy sweep */
			p_osm->subn.force_heavy_sweep = TRUE;
			FUNC6(p_osm);
		}
	}
	if (FUNC1(p_opt))
		FUNC3(&p_osm->console, &p_osm->log);
	return 0;
}