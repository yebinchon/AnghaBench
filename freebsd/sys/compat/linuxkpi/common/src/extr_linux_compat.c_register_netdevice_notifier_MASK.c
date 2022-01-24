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
struct notifier_block {void** tags; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct notifier_block*,int /*<<< orphan*/ ) ; 
 size_t NETDEV_CHANGEADDR ; 
 size_t NETDEV_REGISTER ; 
 size_t NETDEV_UNREGISTER ; 
 size_t NETDEV_UP ; 
 int /*<<< orphan*/  iflladdr_event ; 
 int /*<<< orphan*/  ifnet_arrival_event ; 
 int /*<<< orphan*/  ifnet_departure_event ; 
 int /*<<< orphan*/  ifnet_link_event ; 
 int /*<<< orphan*/  linux_handle_iflladdr_event ; 
 int /*<<< orphan*/  linux_handle_ifnet_arrival_event ; 
 int /*<<< orphan*/  linux_handle_ifnet_departure_event ; 
 int /*<<< orphan*/  linux_handle_ifnet_link_event ; 

int
FUNC1(struct notifier_block *nb)
{

	nb->tags[NETDEV_UP] = FUNC0(
	    ifnet_link_event, linux_handle_ifnet_link_event, nb, 0);
	nb->tags[NETDEV_REGISTER] = FUNC0(
	    ifnet_arrival_event, linux_handle_ifnet_arrival_event, nb, 0);
	nb->tags[NETDEV_UNREGISTER] = FUNC0(
	    ifnet_departure_event, linux_handle_ifnet_departure_event, nb, 0);
	nb->tags[NETDEV_CHANGEADDR] = FUNC0(
	    iflladdr_event, linux_handle_iflladdr_event, nb, 0);

	return (0);
}