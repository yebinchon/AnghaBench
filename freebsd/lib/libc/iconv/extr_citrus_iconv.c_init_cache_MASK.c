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

/* Variables and functions */
 int /*<<< orphan*/  CI_ENV_MAX_REUSE ; 
 int /*<<< orphan*/  CI_HASH_SIZE ; 
 int CI_INITIAL_MAX_REUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  ci_lock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int isinit ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int shared_max_reuse ; 
 int /*<<< orphan*/  shared_pool ; 
 int /*<<< orphan*/  shared_unused ; 

__attribute__((used)) static __inline void
FUNC7(void)
{

	FUNC2(&ci_lock);
	if (!isinit) {
		FUNC3(&shared_pool, CI_HASH_SIZE);
		FUNC0(&shared_unused);
		shared_max_reuse = -1;
		if (!FUNC6() && FUNC5(CI_ENV_MAX_REUSE))
			shared_max_reuse = FUNC4(FUNC5(CI_ENV_MAX_REUSE));
		if (shared_max_reuse < 0)
			shared_max_reuse = CI_INITIAL_MAX_REUSE;
		isinit = true;
	}
	FUNC1(&ci_lock);
}