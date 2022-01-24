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
struct ck_rhs_entry_desc {scalar_t__ wanted; } ;
struct ck_rhs {struct ck_rhs_map* map; } ;

/* Variables and functions */
 scalar_t__ CK_RHS_MAX_WANTED ; 
 struct ck_rhs_entry_desc* FUNC0 (struct ck_rhs_map*,long) ; 
 long FUNC1 (struct ck_rhs_map*,long,int) ; 
 int FUNC2 (struct ck_rhs_map*,long) ; 

__attribute__((used)) static unsigned long
FUNC3(struct ck_rhs *hs, long offset, long limit)
{
	struct ck_rhs_map *map = hs->map;
	int probes = FUNC2(map, offset);
	bool do_remove = true;
	struct ck_rhs_entry_desc *desc;

	while (probes > 1) {
		probes--;
		offset = FUNC1(map, offset, probes);
		if (offset == limit)
			do_remove = false;
		if (do_remove) {
			desc = FUNC0(map, offset);
			if (desc->wanted != CK_RHS_MAX_WANTED)
				desc->wanted--;
		}
	}
	return offset;
}