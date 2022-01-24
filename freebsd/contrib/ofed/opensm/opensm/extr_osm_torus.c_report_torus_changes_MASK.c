#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct torus {unsigned int x_sz; unsigned int y_sz; unsigned int z_sz; unsigned int max_changes; TYPE_1__* osm; int /*<<< orphan*/ *** sw; } ;
struct TYPE_2__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  OSM_LOG_INFO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ROUTING ; 
 int /*<<< orphan*/  FUNC2 (struct torus*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC4(struct torus *nt, struct torus *ot)
{
	unsigned cnt = 0;
	unsigned i, j, k;
	unsigned x_sz = nt->x_sz;
	unsigned y_sz = nt->y_sz;
	unsigned z_sz = nt->z_sz;
	unsigned max_changes = nt->max_changes;

	if (FUNC1(&nt->osm->log, OSM_LOG_ROUTING))
		FUNC2(nt);

	if (!ot)
		return;

	if (x_sz != ot->x_sz) {
		cnt++;
		FUNC0(&nt->osm->log, OSM_LOG_INFO,
			"Torus x radix was %d now %d\n",
			ot->x_sz, nt->x_sz);
		if (x_sz > ot->x_sz)
			x_sz = ot->x_sz;
	}
	if (y_sz != ot->y_sz) {
		cnt++;
		FUNC0(&nt->osm->log, OSM_LOG_INFO,
			"Torus y radix was %d now %d\n",
			ot->y_sz, nt->y_sz);
		if (y_sz > ot->y_sz)
			y_sz = ot->y_sz;
	}
	if (z_sz != ot->z_sz) {
		cnt++;
		FUNC0(&nt->osm->log, OSM_LOG_INFO,
			"Torus z radix was %d now %d\n",
			ot->z_sz, nt->z_sz);
		if (z_sz > ot->z_sz)
			z_sz = ot->z_sz;
	}

	for (k = 0; k < z_sz; k++)
		for (j = 0; j < y_sz; j++)
			for (i = 0; i < x_sz; i++) {
				cnt += FUNC3(nt->sw[i][j][k],
						   ot->sw[i][j][k]);
				/*
				 * Booting a big fabric will cause lots of
				 * changes as hosts come up, so don't spew.
				 * We want to log changes to learn more about
				 * bouncing links, etc, so they can be fixed.
				 */
				if (cnt > max_changes) {
					FUNC0(&nt->osm->log, OSM_LOG_INFO,
						"Too many torus changes; "
						"stopping reporting early\n");
					return;
				}
			}
}