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
struct bt_devinfo {int /*<<< orphan*/  devname; int /*<<< orphan*/  bdaddr; } ;
struct bt_devaddr_match_arg {int /*<<< orphan*/  devname; int /*<<< orphan*/  bdaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(int s, struct bt_devinfo const *di, void *arg)
{
	struct bt_devaddr_match_arg	*m = (struct bt_devaddr_match_arg *)arg;

	if (!FUNC0(&di->bdaddr, m->bdaddr))
		return (0);

	FUNC1(m->devname, di->devname, sizeof(m->devname));

	return (1);
}