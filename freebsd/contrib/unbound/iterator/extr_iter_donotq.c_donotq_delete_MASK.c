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
 int /*<<< orphan*/  FUNC0 (struct iter_donotq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void 
FUNC2(struct iter_donotq* dq)
{
	if(!dq) 
		return;
	FUNC1(dq->region);
	FUNC0(dq);
}