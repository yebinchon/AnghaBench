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
struct hookproc {scalar_t__ hp_magic; scalar_t__ hp_pid; } ;

/* Variables and functions */
 scalar_t__ HOOKPROC_MAGIC_ONLIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct hookproc* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hookproc*) ; 
 int /*<<< orphan*/  FUNC4 (struct hookproc*) ; 
 int /*<<< orphan*/  hookprocs ; 
 int /*<<< orphan*/  hookprocs_lock ; 
 int hooks_initialized ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(void)
{
	struct hookproc *hp;

	FUNC0(hooks_initialized);

	FUNC6(&hookprocs_lock);
	while ((hp = FUNC1(&hookprocs)) != NULL) {
		FUNC0(hp->hp_magic == HOOKPROC_MAGIC_ONLIST);
		FUNC0(hp->hp_pid > 0);

		FUNC4(hp);
		FUNC3(hp);
	}
	FUNC7(&hookprocs_lock);

	FUNC5(&hookprocs_lock);
	FUNC2(&hookprocs);
	hooks_initialized = false;
}