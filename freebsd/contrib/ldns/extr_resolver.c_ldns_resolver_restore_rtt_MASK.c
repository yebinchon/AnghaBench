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
typedef  int /*<<< orphan*/  ldns_resolver ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t*) ; 
 size_t* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static void
FUNC3(ldns_resolver *r, size_t *old_rtt)
{
	size_t *cur_rtt = FUNC1(r);

	if (cur_rtt) {
		FUNC0(cur_rtt);
	}
	FUNC2(r, old_rtt);
}