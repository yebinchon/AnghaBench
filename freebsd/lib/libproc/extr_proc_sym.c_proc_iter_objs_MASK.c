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
struct proc_handle {size_t nmappings; TYPE_1__* mappings; } ;
typedef  int (* proc_map_f ) (void*,TYPE_2__*,char*) ;
struct TYPE_7__ {char* pr_mapname; } ;
typedef  TYPE_2__ prmap_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  last ;
struct TYPE_6__ {TYPE_2__ map; } ;

/* Variables and functions */
 int MAXPATHLEN ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct proc_handle*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int FUNC5 (void*,TYPE_2__*,char*) ; 

int
FUNC6(struct proc_handle *p, proc_map_f *func, void *cd)
{
	char last[MAXPATHLEN], path[MAXPATHLEN], *base;
	prmap_t *map;
	size_t i;
	int error;

	if (p->nmappings == 0)
		if (FUNC2(p) == NULL)
			return (-1);

	error = 0;
	FUNC1(last, 0, sizeof(last));
	for (i = 0; i < p->nmappings; i++) {
		map = &p->mappings[i].map;
		FUNC4(path, map->pr_mapname, sizeof(path));
		base = FUNC0(path);
		/*
		 * We shouldn't call the callback twice with the same object.
		 * To do that we are assuming the fact that if there are
		 * repeated object names (i.e. different mappings for the
		 * same object) they occur next to each other.
		 */
		if (FUNC3(base, last) == 0)
			continue;
		if ((error = (*func)(cd, map, base)) != 0)
			break;
		FUNC4(last, path, sizeof(last));
	}
	return (error);
}