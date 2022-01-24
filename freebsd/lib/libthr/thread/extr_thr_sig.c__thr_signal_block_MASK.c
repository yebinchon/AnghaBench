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
struct pthread {scalar_t__ sigblock; int /*<<< orphan*/  sigmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _thr_maskset ; 

void
FUNC1(struct pthread *curthread)
{
	
	if (curthread->sigblock > 0) {
		curthread->sigblock++;
		return;
	}
	FUNC0(SIG_BLOCK, &_thr_maskset, &curthread->sigmask);
	curthread->sigblock++;
}