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
struct ck_rhs_map {long (* probe_func ) (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * generation; } ;
struct ck_rhs_entry_desc {int in_rh; unsigned long probes; } ;
struct ck_rhs {int /*<<< orphan*/  mode; struct ck_rhs_map* map; } ;

/* Variables and functions */
 void* FUNC0 (void const*) ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned long CK_RHS_G_MASK ; 
 int /*<<< orphan*/  CK_RHS_PROBE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ck_rhs*,long,int,unsigned long) ; 
 struct ck_rhs_entry_desc* FUNC6 (struct ck_rhs_map*,long) ; 
 int /*<<< orphan*/  FUNC7 (struct ck_rhs*,long) ; 
 int /*<<< orphan*/  FUNC8 (struct ck_rhs_map*,long) ; 
 int /*<<< orphan*/  FUNC9 (struct ck_rhs_map*,unsigned long) ; 
 void* FUNC10 (int /*<<< orphan*/ ,void const*,unsigned long) ; 
 int FUNC11 (struct ck_rhs*,long,struct ck_rhs_entry_desc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ck_rhs_map*,long,unsigned long) ; 
 long FUNC13 (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC14(struct ck_rhs *hs,
    unsigned long h,
    const void *key,
    void **previous)
{
	long slot, first;
	const void *object;
	const void *insert;
	unsigned long n_probes;
	struct ck_rhs_map *map = hs->map;
	struct ck_rhs_entry_desc *desc, *desc2;

	*previous = NULL;
restart:
	slot = map->probe_func(hs, map, &n_probes, &first, h, key, &object,
	    FUNC9(map, h), CK_RHS_PROBE);

	/* Replacement semantics presume existence. */
	if (object == NULL)
		return false;

	insert = FUNC10(hs->mode, key, h);

	if (first != -1) {
		int ret;

		desc = FUNC6(map, slot);
		desc2 = FUNC6(map, first);
		desc->in_rh = true;
		ret = FUNC11(hs, first, desc2);
		desc->in_rh = false;
		if (FUNC1(ret == 1))
			goto restart;
		else if (FUNC1(ret != 0))
			return false;
		FUNC4(FUNC8(map, first), insert);
		FUNC3(&map->generation[h & CK_RHS_G_MASK]);
		FUNC2();
		desc2->probes = n_probes;
		FUNC5(hs, first, -1, h);
		FUNC7(hs, slot);
	} else {
		FUNC4(FUNC8(map, slot), insert);
		FUNC12(map, slot, n_probes);
	}
	*previous = FUNC0(object);
	return true;
}