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
struct ck_hs_map {int dummy; } ;
struct ck_hs {int /*<<< orphan*/  mode; struct ck_hs_map* map; } ;

/* Variables and functions */
 void* FUNC0 (void const*) ; 
 int /*<<< orphan*/  CK_HS_PROBE ; 
 void const* CK_HS_TOMBSTONE ; 
 int /*<<< orphan*/  FUNC1 (struct ck_hs_map*,unsigned long) ; 
 void** FUNC2 (struct ck_hs*,struct ck_hs_map*,unsigned long*,void const***,unsigned long,void const*,void const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ck_hs_map*,unsigned long) ; 
 void* FUNC4 (int /*<<< orphan*/ ,void const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (void const**,void const*) ; 

bool
FUNC6(struct ck_hs *hs,
    unsigned long h,
    const void *key,
    void **previous)
{
	const void **slot, **first, *object, *insert;
	struct ck_hs_map *map = hs->map;
	unsigned long n_probes;

	*previous = NULL;
	slot = FUNC2(hs, map, &n_probes, &first, h, key, &object,
	    FUNC1(map, h), CK_HS_PROBE);

	/* Replacement semantics presume existence. */
	if (object == NULL)
		return false;

	insert = FUNC4(hs->mode, key, h);

	if (first != NULL) {
		FUNC5(first, insert);
		FUNC3(map, h);
		FUNC5(slot, CK_HS_TOMBSTONE);
	} else {
		FUNC5(slot, insert);
	}

	*previous = FUNC0(object);
	return true;
}