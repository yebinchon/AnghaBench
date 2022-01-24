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
 int /*<<< orphan*/  invl_gen_ts ; 
 scalar_t__ pmap_invl_gen ; 
 int /*<<< orphan*/  FUNC0 (struct turnstile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct turnstile* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct turnstile*) ; 

__attribute__((used)) static void
FUNC5(u_long new_gen)
{
	struct turnstile *ts;

	FUNC1(&invl_gen_ts);
	ts = FUNC3(&invl_gen_ts);
	if (new_gen != 0)
		pmap_invl_gen = new_gen;
	if (ts != NULL) {
		FUNC0(ts, TS_SHARED_QUEUE);
		FUNC4(ts);
	}
	FUNC2(&invl_gen_ts);
}