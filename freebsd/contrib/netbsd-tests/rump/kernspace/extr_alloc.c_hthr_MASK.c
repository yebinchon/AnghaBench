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
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int VM_MAP_WANTVA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int curstat ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kcv ; 
 TYPE_1__* kernel_map ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pp1 ; 
 int /*<<< orphan*/ * store ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	int i;

	FUNC5(&mtx);
	curstat++;
	FUNC1(&kcv);

	while (curstat < 2)
		FUNC2(&kcv, &mtx);
	FUNC6(&mtx);

	/* try to guarantee that the sleep is triggered in PR_WAITOK */
	while ((kernel_map->flags & VM_MAP_WANTVA) == 0)
		FUNC3("take5", false, 1, NULL);

	for (i = 0; i < FUNC0(store); i++) {
		FUNC7(&pp1, store[i]);
	}

	FUNC4(0);
}