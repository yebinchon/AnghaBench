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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  scalar_t__ u_long ;
struct lock_delay_arg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  di_delay ; 
 int /*<<< orphan*/  invl_wait ; 
 int /*<<< orphan*/  invl_wait_slow ; 
 int /*<<< orphan*/  FUNC5 (struct lock_delay_arg*) ; 
 int /*<<< orphan*/  FUNC6 (struct lock_delay_arg*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmap_delayed_invl_callout_func ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pmap_invl_callout ; 
 int /*<<< orphan*/  pmap_invl_callout_inited ; 
 TYPE_1__ pmap_invl_gen_head ; 
 int /*<<< orphan*/  pmap_invl_waiters ; 

__attribute__((used)) static void
FUNC9(vm_page_t m)
{
	u_long *m_gen;
	struct lock_delay_arg lda;
	bool fast;

	fast = true;
	m_gen = FUNC7(m);
	FUNC6(&lda, &di_delay);
	while (*m_gen > FUNC3(&pmap_invl_gen_head.gen)) {
		if (fast || !pmap_invl_callout_inited) {
			FUNC0(FUNC2(&invl_wait, 1));
			FUNC5(&lda);
			fast = false;
		} else {
			/*
			 * The page's invalidation generation number
			 * is still below the current thread's number.
			 * Prepare to block so that we do not waste
			 * CPU cycles or worse, suffer livelock.
			 *
			 * Since it is impossible to block without
			 * racing with pmap_delayed_invl_finish_u(),
			 * prepare for the race by incrementing
			 * pmap_invl_waiters and arming a 1-tick
			 * callout which will unblock us if we lose
			 * the race.
			 */
			FUNC1(&pmap_invl_waiters, 1);

			/*
			 * Re-check the current thread's invalidation
			 * generation after incrementing
			 * pmap_invl_waiters, so that there is no race
			 * with pmap_delayed_invl_finish_u() setting
			 * the page generation and checking
			 * pmap_invl_waiters.  The only race allowed
			 * is for a missed unblock, which is handled
			 * by the callout.
			 */
			if (*m_gen >
			    FUNC3(&pmap_invl_gen_head.gen)) {
				FUNC4(&pmap_invl_callout, 1,
				    pmap_delayed_invl_callout_func, NULL);
				FUNC0(FUNC2(&invl_wait_slow, 1));
				FUNC8(m_gen,
				    &pmap_invl_gen_head.gen);
			}
			FUNC1(&pmap_invl_waiters, -1);
		}
	}
}