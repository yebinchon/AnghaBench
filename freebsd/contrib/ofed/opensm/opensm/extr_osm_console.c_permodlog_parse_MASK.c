#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* per_module_logging_file; } ;
struct TYPE_6__ {TYPE_1__ opt; } ;
struct TYPE_7__ {TYPE_2__ subn; } ;
typedef  TYPE_3__ osm_opensm_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
	FILE *fp;
	char buf[1024];

	if (p_osm->subn.opt.per_module_logging_file != NULL) {
		fp = FUNC2(p_osm->subn.opt.per_module_logging_file, "r");
		if (!fp) {
			if (errno == ENOENT)
				return;
			FUNC3(out, "fopen(%s) failed: %s\n",
				p_osm->subn.opt.per_module_logging_file,
				FUNC4(errno));
			return;
		}

		FUNC3(out, "Per module logging file: %s\n",
			p_osm->subn.opt.per_module_logging_file);
		while (FUNC1(buf, sizeof buf, fp) != NULL)
			FUNC3(out, "%s", buf);
		FUNC0(fp);
		FUNC3(out, "\n");
	}
}