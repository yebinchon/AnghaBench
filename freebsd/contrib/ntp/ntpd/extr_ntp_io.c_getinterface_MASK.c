#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32 ;
typedef  int /*<<< orphan*/  sockaddr_u ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_1__ endpt ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 

endpt *
FUNC1(
	sockaddr_u *	addr,
	u_int32		flags
	)
{
	endpt *iface;

	iface = FUNC0(addr);

	if (iface != NULL && (iface->flags & flags))
		iface = NULL;

	return iface;
}