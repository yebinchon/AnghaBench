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
struct linux_device_handler {scalar_t__ linux_major; } ;
struct device_element {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_LINUX ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct device_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct linux_device_handler*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  devices ; 
 int /*<<< orphan*/  linux_major_starting ; 
 int /*<<< orphan*/  list ; 
 struct device_element* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3(struct linux_device_handler *d)
{
	struct device_element *de;

	if (d == NULL)
		return (EINVAL);

	de = FUNC2(sizeof(*de), M_LINUX, M_WAITOK);
	if (d->linux_major < 0) {
		d->linux_major = linux_major_starting++;
	}
	FUNC1(d, &de->entry, sizeof(*d));

	/* Add the element to the list, sorted on span. */
	FUNC0(&devices, de, list);

	return (0);
}