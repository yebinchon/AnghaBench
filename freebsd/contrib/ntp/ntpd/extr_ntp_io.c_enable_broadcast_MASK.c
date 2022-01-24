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
struct interface {int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  sockaddr_u ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct interface*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC1(
	struct interface *	iface,
	sockaddr_u *		baddr
	)
{
#ifdef OPEN_BCAST_SOCKET
	socket_broadcast_enable(iface, iface->fd, baddr);
#endif
}