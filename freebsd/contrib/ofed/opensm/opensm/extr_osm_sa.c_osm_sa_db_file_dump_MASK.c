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
struct TYPE_5__ {scalar_t__ dirty; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; TYPE_1__ sa; } ;
typedef  TYPE_2__ osm_opensm_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sa_dump_all_sa ; 

int FUNC3(osm_opensm_t * p_osm)
{
	int res = 1;

	FUNC0(&p_osm->lock);
	if (p_osm->sa.dirty) {
		res = FUNC2(
			p_osm, "opensm-sa.dump", sa_dump_all_sa);
		if (!res)
			p_osm->sa.dirty = FALSE;
	}
	FUNC1(&p_osm->lock);

	return res;
}