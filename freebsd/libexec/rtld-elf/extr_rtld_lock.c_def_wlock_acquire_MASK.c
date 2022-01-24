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
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ Lock ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  WAFLAG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  fullsigmask ; 
 int /*<<< orphan*/  oldsigmask ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wnested ; 

__attribute__((used)) static void
FUNC3(void *lock)
{
	Lock *l;
	sigset_t tmp_oldsigmask;

	l = (Lock *)lock;
	for (;;) {
		FUNC2(SIG_BLOCK, &fullsigmask, &tmp_oldsigmask);
		if (FUNC0(&l->lock, 0, WAFLAG))
			break;
		FUNC2(SIG_SETMASK, &tmp_oldsigmask, NULL);
	}
	if (FUNC1(&wnested, 1) == 0)
		oldsigmask = tmp_oldsigmask;
}