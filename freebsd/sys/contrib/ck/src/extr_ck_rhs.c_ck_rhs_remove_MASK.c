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
struct ck_rhs_map {long (* probe_func ) (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  n_entries; } ;
struct ck_rhs {struct ck_rhs_map* map; } ;

/* Variables and functions */
 void* FUNC0 (void const*) ; 
 int /*<<< orphan*/  CK_RHS_PROBE_NO_RH ; 
 int /*<<< orphan*/  FUNC1 (struct ck_rhs*,long) ; 
 int /*<<< orphan*/  FUNC2 (struct ck_rhs_map*,unsigned long) ; 
 long FUNC3 (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *
FUNC4(struct ck_rhs *hs,
    unsigned long h,
    const void *key)
{
	long slot, first;
	const void *object;
	struct ck_rhs_map *map = hs->map;
	unsigned long n_probes;

	slot = map->probe_func(hs, map, &n_probes, &first, h, key, &object,
	    FUNC2(map, h), CK_RHS_PROBE_NO_RH);
	if (object == NULL)
		return NULL;

	map->n_entries--;
	FUNC1(hs, slot);
	return FUNC0(object);
}