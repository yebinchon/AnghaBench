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
struct linux_cdev {int siref; int /*<<< orphan*/ * cdev; } ;

/* Variables and functions */
 int LDEV_SI_DTR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void
FUNC5(struct linux_cdev *ldev)
{

	if (ldev->cdev == NULL)
		return;

	FUNC0((ldev->siref & LDEV_SI_DTR) == 0);
	FUNC2(&ldev->siref, LDEV_SI_DTR);
	while ((FUNC1(&ldev->siref) & ~LDEV_SI_DTR) != 0)
		FUNC4("ldevdtr", hz / 4);

	FUNC3(ldev->cdev);
	ldev->cdev = NULL;
}