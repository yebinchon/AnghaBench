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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct linux_file {int f_kqflags; int /*<<< orphan*/  f_kqlock; TYPE_1__ f_selinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int LINUX_KQ_FLAG_NEED_READ ; 
 int LINUX_KQ_FLAG_NEED_WRITE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct linux_file *filp)
{
	/* this function should be NULL-safe */
	if (filp == NULL)
		return;

	FUNC1(&filp->f_selinfo);

	FUNC2(&filp->f_kqlock);
	filp->f_kqflags |= LINUX_KQ_FLAG_NEED_READ |
	    LINUX_KQ_FLAG_NEED_WRITE;

	/* make sure the "knote" gets woken up */
	FUNC0(&filp->f_selinfo.si_note, 1);
	FUNC3(&filp->f_kqlock);
}