#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  osm_log_t ;
struct TYPE_8__ {TYPE_1__* p_osm; } ;
typedef  TYPE_2__ lash_t ;
struct TYPE_7__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int,int,int***,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int*** FUNC4 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int***,int) ; 
 int* FUNC6 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC7(lash_t *p_lash, int rank, int **matrix, int **poly)
{
	osm_log_t *p_log = &p_lash->p_osm->log;
	int ret = -1;
	int i, j;
	int ***m = NULL;
	int *p = NULL;
	int deg = rank;

	FUNC0(p_log);

	do {
		if (!matrix)
			break;

		if (!(p = FUNC6(p_lash, deg)))
			break;

		if (!(m = FUNC4(p_lash, rank, deg))) {
			FUNC3(p);
			p = NULL;
			break;
		}

		for (i = 0; i < rank; i++) {
			for (j = 0; j < rank; j++) {
				m[i][j][0] = matrix[i][j];
			}
			m[i][i][1] = -1;
		}

		if (FUNC2(p_lash, deg, rank, m, p)) {
			FUNC3(p);
			p = NULL;
			break;
		}

		ret = 0;
	} while (0);

	FUNC5(m, rank);
	*poly = p;

	FUNC1(p_log);
	return ret;
}