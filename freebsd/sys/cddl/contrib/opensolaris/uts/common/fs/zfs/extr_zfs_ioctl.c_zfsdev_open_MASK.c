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
struct thread {int dummy; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int FEXCL ; 
 int /*<<< orphan*/  cr ; 
 scalar_t__ FUNC0 (struct cdev) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  otyp ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int FUNC3 (struct cdev*) ; 
 int FUNC4 (struct cdev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct cdev *devp, int flag, int mode, struct thread *td)
{
	int error = 0;

#ifdef illumos
	if (getminor(*devp) != 0)
		return (zvol_open(devp, flag, otyp, cr));
#endif

	/* This is the control device. Allocate a new minor if requested. */
	if (flag & FEXCL) {
		FUNC1(&spa_namespace_lock);
		error = FUNC3(devp);
		FUNC2(&spa_namespace_lock);
	}

	return (error);
}