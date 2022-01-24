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
struct torus {unsigned int* port_order; TYPE_1__* osm; } ;
struct TYPE_2__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  OSM_LOG_INFO ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,char const*) ; 

__attribute__((used)) static
bool FUNC3(struct torus *t, const char *parse_sep)
{
	unsigned i, j, k, n;

	for (i = 0; i < FUNC0(t->port_order); i++) {
		if (!FUNC2(&(t->port_order[i]), parse_sep))
			break;

		for (j = 0; j < i; j++) {
			if (t->port_order[j] == t->port_order[i]) {
				FUNC1(&t->osm->log, OSM_LOG_INFO,
					"Ignored duplicate port %u in"
					" port_order parsing\n",
					t->port_order[j]);
				i--;	/* Ignore duplicate port number */
				break;
			}
		}
	}

	n = i;
	for (j = 0; j < FUNC0(t->port_order); j++) {
		for (k = 0; k < i; k++)
			if (t->port_order[k] == j)
				break;
		if (k >= i)
			t->port_order[n++] = j;
	}

	return true;
}