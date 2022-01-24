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
struct bt_devinfo {int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  devname; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct bt_devinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 

int
FUNC3(char const *devname, bdaddr_t *addr)
{
	struct bt_devinfo	di;

	FUNC2(di.devname, devname, sizeof(di.devname));

	if (FUNC1(&di) < 0)
		return (0);

	if (addr != NULL)
		FUNC0(addr, &di.bdaddr);

	return (1);
}