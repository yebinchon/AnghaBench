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
struct notifier_block {int /*<<< orphan*/ * tags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t NETDEV_CHANGEIFADDR ; 
 int /*<<< orphan*/  ifaddr_event ; 

int
FUNC1(struct notifier_block *nb)
{

	FUNC0(ifaddr_event,
	    nb->tags[NETDEV_CHANGEIFADDR]);

	return (0);
}