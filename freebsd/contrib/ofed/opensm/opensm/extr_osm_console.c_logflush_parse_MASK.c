#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  flush; int /*<<< orphan*/  out_port; } ;
struct TYPE_5__ {TYPE_1__ log; } ;
typedef  TYPE_2__ osm_opensm_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (char**) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
	char *p_cmd;

	p_cmd = FUNC3(p_last);
	if (!p_cmd ||
	    (FUNC4(p_cmd, "on") != 0 && FUNC4(p_cmd, "off") != 0)) {
		FUNC1(out, "Invalid logflush command\n");
		FUNC2(out, 1);
	} else {
		if (FUNC4(p_cmd, "on") == 0) {
			p_osm->log.flush = TRUE;
	                FUNC0(p_osm->log.out_port);
		} else
			p_osm->log.flush = FALSE;
	}
}