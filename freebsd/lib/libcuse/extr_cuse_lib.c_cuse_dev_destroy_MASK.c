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
struct cuse_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CUSE_IOCTL_DESTROY_DEV ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cuse_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 scalar_t__ f_cuse ; 
 int /*<<< orphan*/  FUNC3 (struct cuse_dev*) ; 
 int /*<<< orphan*/  h_cuse ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,struct cuse_dev**) ; 

void
FUNC5(struct cuse_dev *cdev)
{
	int error;

	if (f_cuse < 0)
		return;

	FUNC0();
	FUNC2(&h_cuse, cdev, entry);
	FUNC1();

	error = FUNC4(f_cuse, CUSE_IOCTL_DESTROY_DEV, &cdev);
	if (error)
		return;

	FUNC3(cdev);
}