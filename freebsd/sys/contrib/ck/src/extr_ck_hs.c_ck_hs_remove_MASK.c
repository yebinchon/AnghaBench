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
struct ck_hs_map {int /*<<< orphan*/  tombstones; int /*<<< orphan*/  n_entries; } ;
struct ck_hs {struct ck_hs_map* map; } ;

/* Variables and functions */
 void* FUNC0 (void const*) ; 
 int /*<<< orphan*/  CK_HS_PROBE ; 
 int /*<<< orphan*/  CK_HS_TOMBSTONE ; 
 int /*<<< orphan*/  FUNC1 (struct ck_hs_map*,unsigned long) ; 
 void** FUNC2 (struct ck_hs*,struct ck_hs_map*,unsigned long*,void const***,unsigned long,void const*,void const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void const**,int /*<<< orphan*/ ) ; 

void *
FUNC4(struct ck_hs *hs,
    unsigned long h,
    const void *key)
{
	const void **slot, **first, *object;
	struct ck_hs_map *map = hs->map;
	unsigned long n_probes;

	slot = FUNC2(hs, map, &n_probes, &first, h, key, &object,
	    FUNC1(map, h), CK_HS_PROBE);
	if (object == NULL)
		return NULL;

	FUNC3(slot, CK_HS_TOMBSTONE);
	map->n_entries--;
	map->tombstones++;
	return FUNC0(object);
}