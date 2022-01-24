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
struct ck_rhs_map {int dummy; } ;
struct ck_rhs {int /*<<< orphan*/  m; struct ck_rhs_map* map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ck_rhs_map**,struct ck_rhs_map*) ; 
 struct ck_rhs_map* FUNC1 (struct ck_rhs*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ck_rhs_map*,int) ; 

bool
FUNC3(struct ck_rhs *hs, unsigned long capacity)
{
	struct ck_rhs_map *map, *previous;

	previous = hs->map;
	map = FUNC1(hs, capacity);
	if (map == NULL)
		return false;

	FUNC0(&hs->map, map);
	FUNC2(hs->m, previous, true);
	return true;
}