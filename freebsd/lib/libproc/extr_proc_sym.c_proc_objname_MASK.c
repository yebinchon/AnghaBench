#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct proc_handle {size_t nmappings; TYPE_1__* mappings; } ;
struct TYPE_4__ {uintptr_t pr_vaddr; uintptr_t pr_size; int /*<<< orphan*/  pr_mapname; } ;
typedef  TYPE_2__ prmap_t ;
struct TYPE_3__ {TYPE_2__ map; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct proc_handle*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 

char *
FUNC2(struct proc_handle *p, uintptr_t addr, char *objname,
    size_t objnamesz)
{
	prmap_t *map;
	size_t i;

	if (p->nmappings == 0)
		if (FUNC0(p) == NULL)
			return (NULL);
	for (i = 0; i < p->nmappings; i++) {
		map = &p->mappings[i].map;
		if (addr >= map->pr_vaddr &&
		    addr < map->pr_vaddr + map->pr_size) {
			FUNC1(objname, map->pr_mapname, objnamesz);
			return (objname);
		}
	}
	return (NULL);
}