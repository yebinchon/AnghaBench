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
struct ck_rhs_map {unsigned int* generation; int /*<<< orphan*/  (* probe_func ) (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,unsigned int,int /*<<< orphan*/ ) ;} ;
struct ck_rhs {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 void* FUNC0 (void const*) ; 
 unsigned long CK_RHS_G_MASK ; 
 int /*<<< orphan*/  CK_RHS_PROBE_NO_RH ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct ck_rhs_map* FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (unsigned int*) ; 
 unsigned int FUNC4 (struct ck_rhs_map*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,unsigned int,int /*<<< orphan*/ ) ; 

void *
FUNC6(struct ck_rhs *hs,
    unsigned long h,
    const void *key)
{
	long first;
	const void *object;
	struct ck_rhs_map *map;
	unsigned long n_probes;
	unsigned int g, g_p, probe;
	unsigned int *generation;

	do {
		map = FUNC2(&hs->map);
		generation = &map->generation[h & CK_RHS_G_MASK];
		g = FUNC3(generation);
		probe  = FUNC4(map, h);
		FUNC1();

		first = -1;
		map->probe_func(hs, map, &n_probes, &first, h, key, &object, probe, CK_RHS_PROBE_NO_RH);

		FUNC1();
		g_p = FUNC3(generation);
	} while (g != g_p);

	return FUNC0(object);
}