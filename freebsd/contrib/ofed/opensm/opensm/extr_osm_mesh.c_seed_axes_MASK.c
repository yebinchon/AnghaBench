#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  osm_log_t ;
struct TYPE_9__ {int num_links; int** matrix; int dimension; int* axes; } ;
typedef  TYPE_3__ mesh_node_t ;
struct TYPE_10__ {TYPE_2__** switches; TYPE_1__* p_osm; } ;
typedef  TYPE_4__ lash_t ;
struct TYPE_8__ {TYPE_3__* node; } ;
struct TYPE_7__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  OSM_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,char*,int,int) ; 

__attribute__((used)) static void FUNC5(lash_t *p_lash, int sw)
{
	osm_log_t *p_log = &p_lash->p_osm->log;
	mesh_node_t *node = p_lash->switches[sw]->node;
	int n = node->num_links;
	int i, j, c;

	FUNC1(p_log);

	if (!node->matrix || !node->dimension)
		goto done;

	for (c = 1; c <= 2*node->dimension; c++) {
		/*
		 * find the next unassigned axis
		 */
		for (i = 0; i < n; i++) {
			if (!node->axes[i])
				break;
		}

		node->axes[i] = c++;

		/*
		 * find the matching opposite direction
		 */
		for (j = 0; j < n; j++) {
			if (node->axes[j] || j == i)
				continue;

			if (node->matrix[i][j] != 2)
				break;
		}

		if (j != n) {
			node->axes[j] = c;
		}
	}

	if (FUNC3(p_log, OSM_LOG_DEBUG)) {
		char buf[256], *p;

		for (i = 0; i < n; i++) {
			p = buf;
			FUNC4(p_lash, p, sw, i);
			FUNC0(p_log, OSM_LOG_DEBUG, "%s", buf);
		}
	}

done:
	FUNC2(p_log);
}