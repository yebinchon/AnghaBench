#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  osm_log_t ;
typedef  int /*<<< orphan*/  mesh_t ;
struct TYPE_6__ {int num_switches; TYPE_1__* p_osm; } ;
typedef  TYPE_2__ lash_t ;
struct TYPE_5__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(lash_t *p_lash, mesh_t *mesh)
{
	osm_log_t *p_log = &p_lash->p_osm->log;
	int sw;
	int num_switches = p_lash->num_switches;

	FUNC0(p_log);

	for (sw = 0; sw < num_switches; sw++) {
		if (FUNC2(p_lash, mesh, sw)) {
			FUNC1(p_log);
			return -1;
		}
	}

	FUNC1(p_log);
	return 0;
}