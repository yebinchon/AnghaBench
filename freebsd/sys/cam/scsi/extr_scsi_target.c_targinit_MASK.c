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
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  UID_ROOT ; 
 struct cdev* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdev*,char*) ; 
 int /*<<< orphan*/  targ_cdevsw ; 

__attribute__((used)) static void
FUNC2(void)
{
	struct cdev *dev;

	/* Add symbolic link to targ0 for compatibility. */
	dev = FUNC0(&targ_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600, "targ");
	FUNC1(dev, "targ0");
}