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
struct TYPE_5__ {int /*<<< orphan*/  force_heavy_sweep; } ;
struct TYPE_6__ {TYPE_1__ subn; } ;
typedef  TYPE_2__ osm_opensm_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
	char *p_cmd;

	p_cmd = FUNC2(p_last);
	if (!p_cmd ||
	    (FUNC4(p_cmd, "heavy") != 0 && FUNC4(p_cmd, "light") != 0)) {
		FUNC0(out, "Invalid resweep command\n");
		FUNC1(out, 1);
	} else {
		if (FUNC4(p_cmd, "heavy") == 0)
			p_osm->subn.force_heavy_sweep = TRUE;
		FUNC3(p_osm);
	}
}