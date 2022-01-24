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
struct ck_hs_map {unsigned int* generation; } ;
struct ck_hs {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 void* FUNC0 (void const*) ; 
 unsigned long CK_HS_G_MASK ; 
 int /*<<< orphan*/  CK_HS_PROBE ; 
 unsigned int FUNC1 (struct ck_hs_map*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct ck_hs*,struct ck_hs_map*,unsigned long*,void const***,unsigned long,void const*,void const**,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct ck_hs_map* FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (unsigned int*) ; 

void *
FUNC6(struct ck_hs *hs,
    unsigned long h,
    const void *key)
{
	const void **first, *object;
	struct ck_hs_map *map;
	unsigned long n_probes;
	unsigned int g, g_p, probe;
	unsigned int *generation;

	do {
		map = FUNC4(&hs->map);
		generation = &map->generation[h & CK_HS_G_MASK];
		g = FUNC5(generation);
		probe  = FUNC1(map, h);
		FUNC3();

		FUNC2(hs, map, &n_probes, &first, h, key, &object, probe, CK_HS_PROBE);

		FUNC3();
		g_p = FUNC5(generation);
	} while (g != g_p);

	return FUNC0(object);
}