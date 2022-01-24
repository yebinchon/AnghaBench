#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int lockstate; int /*<<< orphan*/  env; } ;
typedef  TYPE_1__ RtldLockState ;

/* Variables and functions */
#define  RTLD_LOCK_RLOCKED 130 
#define  RTLD_LOCK_UNLOCKED 129 
#define  RTLD_LOCK_WLOCKED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void
FUNC2(RtldLockState *lockstate)
{

	if (lockstate == NULL)
		return;

	switch (lockstate->lockstate) {
	case RTLD_LOCK_UNLOCKED:
	case RTLD_LOCK_WLOCKED:
		break;
	case RTLD_LOCK_RLOCKED:
		FUNC1(lockstate->env, 1);
		break;
	default:
		FUNC0(0);
	}
}