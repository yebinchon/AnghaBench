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
struct cdev_priv {scalar_t__ cdp_inode; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  priv ;
typedef  int /*<<< orphan*/  kvm_t ;
typedef  int dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct cdev*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned long,struct cdev_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct cdev*) ; 

dev_t
FUNC4(kvm_t *kd, struct cdev *dev)
{
	struct cdev_priv priv;

	FUNC0(kd);
	if (FUNC2(kd, (unsigned long)FUNC1(dev), &priv,
	    sizeof(priv))) {
		return ((dev_t)priv.cdp_inode);
	} else {
		FUNC3("can't convert cdev *%p to a dev_t\n", dev);
		return (-1);
	}
}