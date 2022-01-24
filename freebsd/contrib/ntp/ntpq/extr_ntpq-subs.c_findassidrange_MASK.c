#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32 ;
typedef  scalar_t__ u_int ;
typedef  scalar_t__ associd_t ;
struct TYPE_2__ {scalar_t__ assid; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 
 TYPE_1__* assoc_cache ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ numassoc ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC4(
	u_int32	assid1,
	u_int32	assid2,
	int *	from,
	int *	to,
	FILE *	fp
	)
{
	associd_t	assids[2];
	int		ind[FUNC0(assids)];
	u_int		i;
	size_t		a;


	if (0 == numassoc)
		FUNC2(fp);

	assids[0] = FUNC1(assid1);
	if (0 == assids[0])
		return 0;
	assids[1] = FUNC1(assid2);
	if (0 == assids[1])
		return 0;

	for (a = 0; a < FUNC0(assids); a++) {
		ind[a] = -1;
		for (i = 0; i < numassoc; i++)
			if (assoc_cache[i].assid == assids[a])
				ind[a] = i;
	}
	for (a = 0; a < FUNC0(assids); a++)
		if (-1 == ind[a]) {
			FUNC3(stderr,
				"***Association ID %u not found in list\n",
				assids[a]);
			return 0;
		}

	if (ind[0] < ind[1]) {
		*from = ind[0];
		*to = ind[1];
	} else {
		*to = ind[0];
		*from = ind[1];
	}
	return 1;
}