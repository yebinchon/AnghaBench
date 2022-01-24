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
typedef  scalar_t__ u_long ;
struct turnstile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS_SHARED_QUEUE ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  invl_gen_ts ; 
 int /*<<< orphan*/  FUNC1 (struct turnstile*) ; 
 struct turnstile* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct turnstile*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(u_long *m_gen, u_long *invl_gen)
{
	struct turnstile *ts;

	ts = FUNC2(&invl_gen_ts);
	if (*m_gen > FUNC0(invl_gen))
		FUNC3(ts, NULL, TS_SHARED_QUEUE);
	else
		FUNC1(ts);
}