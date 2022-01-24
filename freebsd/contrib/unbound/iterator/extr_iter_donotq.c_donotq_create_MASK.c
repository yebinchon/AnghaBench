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
struct iter_donotq {int /*<<< orphan*/  region; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iter_donotq*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

struct iter_donotq* 
FUNC3(void)
{
	struct iter_donotq* dq = (struct iter_donotq*)FUNC0(1,
		sizeof(struct iter_donotq));
	if(!dq)
		return NULL;
	dq->region = FUNC2();
	if(!dq->region) {
		FUNC1(dq);
		return NULL;
	}
	return dq;
}