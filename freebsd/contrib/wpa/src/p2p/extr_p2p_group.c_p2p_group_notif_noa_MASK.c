#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct p2p_group {int beacon_update; TYPE_1__* noa; } ;
struct TYPE_5__ {scalar_t__ used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct p2p_group*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC4 (TYPE_1__*) ; 

int FUNC5(struct p2p_group *group, const u8 *noa,
			size_t noa_len)
{
	if (noa == NULL) {
		FUNC2(group->noa);
		group->noa = NULL;
	} else {
		if (group->noa) {
			if (FUNC4(group->noa) >= noa_len) {
				group->noa->used = 0;
				FUNC3(group->noa, noa, noa_len);
			} else {
				FUNC2(group->noa);
				group->noa = NULL;
			}
		}

		if (!group->noa) {
			group->noa = FUNC1(noa, noa_len);
			if (group->noa == NULL)
				return -1;
		}
	}

	group->beacon_update = 1;
	FUNC0(group);
	return 0;
}