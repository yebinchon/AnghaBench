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
struct prison {int /*<<< orphan*/  pr_mtx; struct prison* pr_parent; } ;
struct linux_prison {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  linux_osd_jail_slot ; 
 struct linux_prison lprison0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct linux_prison* FUNC2 (struct prison*,int /*<<< orphan*/ ) ; 
 struct prison prison0 ; 

__attribute__((used)) static struct linux_prison *
FUNC3(struct prison *spr, struct prison **prp)
{
	struct prison *pr;
	struct linux_prison *lpr;

	for (pr = spr;; pr = pr->pr_parent) {
		FUNC0(&pr->pr_mtx);
		lpr = (pr == &prison0)
		    ? &lprison0
		    : FUNC2(pr, linux_osd_jail_slot);
		if (lpr != NULL)
			break;
		FUNC1(&pr->pr_mtx);
	}
	*prp = pr;

	return (lpr);
}