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
struct rlock {scalar_t__ rls_magic; int /*<<< orphan*/  rls_locks; } ;
struct rangelocks {scalar_t__ rls_magic; int /*<<< orphan*/  rls_locks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RANGELOCKS_MAGIC ; 
 struct rlock* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rlock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rlock*) ; 
 int /*<<< orphan*/  rl_next ; 

void
FUNC4(struct rangelocks *rls)
{
	struct rlock *rl;

	FUNC0(rls->rls_magic == RANGELOCKS_MAGIC);

	rls->rls_magic = 0;

	while ((rl = FUNC1(&rls->rls_locks)) != NULL) {
		FUNC2(&rls->rls_locks, rl, rl_next);
		FUNC3(rl);
	}
	FUNC3(rls);
}