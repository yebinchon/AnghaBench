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
typedef  int /*<<< orphan*/  osm_log_t ;
struct TYPE_5__ {TYPE_1__* p_osm; } ;
typedef  TYPE_2__ lash_t ;
struct TYPE_4__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int***,int) ; 

__attribute__((used)) static int ***FUNC3(lash_t *p_lash, int l, int n)
{
	osm_log_t *p_log = &p_lash->p_osm->log;
	int i, j;
	int ***m = NULL;

	do {
		if (!(m = FUNC1(l, sizeof(int **))))
			break;

		for (i = 0; i < l; i++) {
			if (!(m[i] = FUNC1(l, sizeof(int *))))
				break;

			for (j = 0; j < l; j++) {
				if (!(m[i][j] = FUNC1(n+1, sizeof(int))))
					break;
			}
			if (j != l)
				break;
		}
		if (i != l)
			break;

		return m;
	} while (0);

	FUNC0(p_log, OSM_LOG_ERROR,
		"Failed allocating matrix - out of memory\n");

	FUNC2(m, l);
	return NULL;
}