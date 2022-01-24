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
struct cuse_dev_entered {void* per_file_handle; struct cuse_dev* cdev; } ;
struct cuse_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CUSE_IOCTL_SET_PFH ; 
 struct cuse_dev_entered* FUNC0 () ; 
 int /*<<< orphan*/  f_cuse ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 

void
FUNC2(struct cuse_dev *cdev, void *handle)
{
	struct cuse_dev_entered *pe;

	pe = FUNC0();
	if (pe == NULL || pe->cdev != cdev)
		return;

	pe->per_file_handle = handle;
	FUNC1(f_cuse, CUSE_IOCTL_SET_PFH, &handle);
}