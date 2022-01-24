#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iter_forward_zone {scalar_t__ dclass; int /*<<< orphan*/  namelabs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int
FUNC1(const void* k1, const void* k2)
{
	int m;
	struct iter_forward_zone* n1 = (struct iter_forward_zone*)k1;
	struct iter_forward_zone* n2 = (struct iter_forward_zone*)k2;
	if(n1->dclass != n2->dclass) {
		if(n1->dclass < n2->dclass)
			return -1;
		return 1;
	}
	return FUNC0(n1->name, n1->namelabs, n2->name, n2->namelabs, 
		&m);
}