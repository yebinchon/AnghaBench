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
struct rangelocks {int /*<<< orphan*/  rls_magic; int /*<<< orphan*/  rls_locks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RANGELOCKS_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rangelocks* FUNC2 (int) ; 

int
FUNC3(struct rangelocks **rlsp)
{
	struct rangelocks *rls;

	FUNC0(rlsp != NULL);

	rls = FUNC2(sizeof(*rls));
	if (rls == NULL)
		return (-1);

	FUNC1(&rls->rls_locks);

	rls->rls_magic = RANGELOCKS_MAGIC;
	*rlsp = rls;

	return (0);
}