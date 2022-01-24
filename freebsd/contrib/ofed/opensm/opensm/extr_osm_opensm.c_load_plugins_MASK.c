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
struct TYPE_6__ {int /*<<< orphan*/  plugin_list; int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ osm_opensm_t ;
struct TYPE_7__ {int /*<<< orphan*/  list; } ;
typedef  TYPE_2__ osm_epi_plugin_t ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_ID ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char*,char*,char**) ; 

__attribute__((used)) static void FUNC6(osm_opensm_t *osm, const char *plugin_names)
{
	osm_epi_plugin_t *epi;
	char *p_names, *name, *p;

	p_names = FUNC4(plugin_names);
	name = FUNC5(p_names, ", \t\n", &p);
	while (name && *name) {
		epi = FUNC2(osm, name);
		if (!epi)
			FUNC3(&osm->log, OSM_LOG_ERROR, FILE_ID,
				   "ERR 1000: cannot load plugin \'%s\'\n",
				   name);
		else
			FUNC0(&osm->plugin_list, &epi->list);
		name = FUNC5(NULL, " \t\n", &p);
	}
	FUNC1(p_names);
}