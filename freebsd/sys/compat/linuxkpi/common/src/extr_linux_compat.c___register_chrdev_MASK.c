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
struct linux_cdev {int /*<<< orphan*/  kobj; struct file_operations const* ops; } ;
struct file_operations {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct linux_cdev*,int /*<<< orphan*/ ,int) ; 
 struct linux_cdev* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int) ; 

int
FUNC4(unsigned int major, unsigned int baseminor,
    unsigned int count, const char *name,
    const struct file_operations *fops)
{
	struct linux_cdev *cdev;
	int ret = 0;
	int i;

	for (i = baseminor; i < baseminor + count; i++) {
		cdev = FUNC1();
		cdev->ops = fops;
		FUNC2(&cdev->kobj, name);

		ret = FUNC0(cdev, FUNC3(major, i), 1);
		if (ret != 0)
			break;
	}
	return (ret);
}