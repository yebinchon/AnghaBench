#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int synch; int /*<<< orphan*/  seljit; TYPE_1__* peer; } ;
typedef  TYPE_2__ peer_select ;
struct TYPE_4__ {double offset; } ;

/* Variables and functions */
 double FUNC0 (double,double) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sys_jitter ; 
 double sys_offset ; 

__attribute__((used)) static void
FUNC3(
	peer_select *	peers,	/* survivor list */
	int		npeers,	/* number of survivors */
	int		syspeer	/* index of sys.peer */
	)
{
	int	i;
	double	x, y, z, w;

	y = z = w = 0;
	for (i = 0; i < npeers; i++) {
		x = 1. / peers[i].synch;
		y += x;
		z += x * peers[i].peer->offset;
		w += x * FUNC0(peers[i].peer->offset,
		    peers[syspeer].peer->offset);
	}
	sys_offset = z / y;
	sys_jitter = FUNC1(w / y + FUNC2(peers[syspeer].seljit));
}