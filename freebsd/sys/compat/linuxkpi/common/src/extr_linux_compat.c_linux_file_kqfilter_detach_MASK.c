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
struct linux_file {int /*<<< orphan*/  f_kqlock; TYPE_1__ f_selinfo; } ;
struct knote {struct linux_file* kn_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct knote *kn)
{
	struct linux_file *filp = kn->kn_hook;

	FUNC1(&filp->f_kqlock);
	FUNC0(&filp->f_selinfo.si_note, kn, 1);
	FUNC2(&filp->f_kqlock);
}