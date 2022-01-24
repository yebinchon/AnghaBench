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
struct TYPE_3__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ osm_opensm_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC1 (char**) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
	char *p_cmd;
	int level;

	p_cmd = FUNC1(p_last);
	if (!p_cmd)
		FUNC0(out, "Current log level is 0x%x\n",
			FUNC2(&p_osm->log));
	else {
		/* Handle x, 0x, and decimal specification of log level */
		if (!FUNC4(p_cmd, "x", 1)) {
			p_cmd++;
			level = FUNC6(p_cmd, NULL, 16);
		} else {
			if (!FUNC4(p_cmd, "0x", 2)) {
				p_cmd += 2;
				level = FUNC6(p_cmd, NULL, 16);
			} else
				level = FUNC5(p_cmd, NULL, 10);
		}
		if ((level >= 0) && (level < 256)) {
			FUNC0(out, "Setting log level to 0x%x\n", level);
			FUNC3(&p_osm->log, level);
		} else
			FUNC0(out, "Invalid log level 0x%x\n", level);
	}
}