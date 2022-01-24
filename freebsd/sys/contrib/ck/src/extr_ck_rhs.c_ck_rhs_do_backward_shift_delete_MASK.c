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
struct ck_rhs_map {unsigned long probe_maximum; int /*<<< orphan*/ * generation; } ;
struct ck_rhs_entry_desc {scalar_t__ wanted; unsigned int probes; unsigned long probe_bound; } ;
struct ck_rhs {struct ck_rhs_map* map; } ;

/* Variables and functions */
 int /*<<< orphan*/  CK_RHS_EMPTY ; 
 unsigned long CK_RHS_G_MASK ; 
 scalar_t__ CK_RHS_MAX_WANTED ; 
 int /*<<< orphan*/  FUNC0 (unsigned long*,int) ; 
 unsigned long CK_RHS_WORD_MAX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ck_rhs_entry_desc* FUNC4 (struct ck_rhs_map*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct ck_rhs_map*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct ck_rhs_map*,long) ; 
 scalar_t__ FUNC7 (struct ck_rhs_map*,unsigned long,unsigned int) ; 
 unsigned long FUNC8 (struct ck_rhs_map*,unsigned long,unsigned int) ; 
 unsigned long* FUNC9 (struct ck_rhs_map*,unsigned long) ; 
 unsigned long FUNC10 (struct ck_rhs*,unsigned long,long) ; 

__attribute__((used)) static void
FUNC11(struct ck_rhs *hs, long slot)
{
	struct ck_rhs_map *map = hs->map;
	struct ck_rhs_entry_desc *desc, *new_desc = NULL;
	unsigned long h;

	desc = FUNC4(map, slot);
	h = FUNC10(hs, slot, -1);
	while (desc->wanted > 0) {
		unsigned long offset = 0, tmp_offset;
		unsigned long wanted_probes = 1;
		unsigned int probe = 0;
		unsigned int max_probes;

		/* Find a successor */
		while (wanted_probes < map->probe_maximum) {
			probe = wanted_probes;
			offset = FUNC8(map, slot, probe);
			while (probe < map->probe_maximum) {
				new_desc = FUNC4(map, offset);
				if (new_desc->probes == probe + 1)
					break;
				probe++;
				offset = FUNC8(map, offset,
				    probe);
			}
			if (probe < map->probe_maximum)
				break;
			wanted_probes++;
		}
		if (!(wanted_probes < map->probe_maximum)) {
			desc->wanted = 0;
			break;
		}
		desc->probes = wanted_probes;
		h = FUNC10(hs, offset, slot);
		FUNC3(FUNC6(map, slot),
		    FUNC5(map, offset));
		FUNC2(&map->generation[h & CK_RHS_G_MASK]);
		FUNC1();
		if (wanted_probes < CK_RHS_WORD_MAX) {
			struct ck_rhs_entry_desc *hdesc = FUNC4(map, h);
			if (hdesc->wanted == 1)
				FUNC0(&hdesc->probe_bound,
				    wanted_probes);
			else if (hdesc->probe_bound == CK_RHS_WORD_MAX ||
			    hdesc->probe_bound == new_desc->probes) {
				probe++;
				if (hdesc->probe_bound == CK_RHS_WORD_MAX)
					max_probes = map->probe_maximum;
				else {
					max_probes = hdesc->probe_bound;
					max_probes--;
				}
				tmp_offset = FUNC8(map, offset,
				    probe);
				while (probe < max_probes) {
					if (h == (unsigned long)FUNC7(map, tmp_offset, probe))
						break;
					probe++;
					tmp_offset = FUNC8(map, tmp_offset, probe);
				}
				if (probe == max_probes)
					FUNC0(&hdesc->probe_bound,
					    wanted_probes);
			}
		}
		if (desc->wanted < CK_RHS_MAX_WANTED)
			desc->wanted--;
		slot = offset;
		desc = new_desc;
	}
	FUNC3(FUNC6(map, slot), CK_RHS_EMPTY);
	if ((desc->probes - 1) < CK_RHS_WORD_MAX)
		FUNC0(FUNC9(map, h),
		    desc->probes - 1);
	desc->probes = 0;
}