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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(tsdn_t *tsdn, arena_t *arena) {
	tsd_t *tsd = FUNC4(tsdn) ? FUNC2() : FUNC5(tsdn);
	if (arena == FUNC0(FUNC3(tsd), 0, false)) {
		/*
		 * The only legitimate case of customized extent hooks for a0 is
		 * hooks with no allocation activities.  One such example is to
		 * place metadata on pre-allocated resources such as huge pages.
		 * In that case, rely on reentrancy_level checks to catch
		 * infinite recursions.
		 */
		FUNC1(tsd, NULL);
	} else {
		FUNC1(tsd, arena);
	}
}