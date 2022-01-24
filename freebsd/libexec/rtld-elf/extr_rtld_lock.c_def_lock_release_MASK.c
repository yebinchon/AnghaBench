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
struct TYPE_2__ {int lock; } ;
typedef  TYPE_1__ Lock ;

/* Variables and functions */
 int RC_INCR ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int WAFLAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int FUNC2 (scalar_t__*,int) ; 
 int /*<<< orphan*/  oldsigmask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ wnested ; 

__attribute__((used)) static void
FUNC4(void *lock)
{
	Lock *l;

	l = (Lock *)lock;
	if ((l->lock & WAFLAG) == 0)
		FUNC1(&l->lock, -RC_INCR);
	else {
		FUNC0(wnested > 0);
		FUNC1(&l->lock, -WAFLAG);
		if (FUNC2(&wnested, -1) == 1)
			FUNC3(SIG_SETMASK, &oldsigmask, NULL);
	}
}