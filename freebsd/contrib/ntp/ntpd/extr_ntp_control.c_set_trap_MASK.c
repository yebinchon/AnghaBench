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
struct recvbuf {int /*<<< orphan*/  dstadr; int /*<<< orphan*/  recv_srcadr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CERR_NORESOURCE ; 
 int /*<<< orphan*/  CERR_PERMISSION ; 
 int RES_LPTRAP ; 
 int RES_NOTRAP ; 
 int TRAP_TYPE_NONPRIO ; 
 int TRAP_TYPE_PRIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ res_version ; 

__attribute__((used)) static void
FUNC3(
	struct recvbuf *rbufp,
	int restrict_mask
	)
{
	int traptype;

	/*
	 * See if this guy is allowed
	 */
	if (restrict_mask & RES_NOTRAP) {
		FUNC0(CERR_PERMISSION);
		return;
	}

	/*
	 * Determine his allowed trap type.
	 */
	traptype = TRAP_TYPE_PRIO;
	if (restrict_mask & RES_LPTRAP)
		traptype = TRAP_TYPE_NONPRIO;

	/*
	 * Call ctlsettrap() to do the work.  Return
	 * an error if it can't assign the trap.
	 */
	if (!FUNC2(&rbufp->recv_srcadr, rbufp->dstadr, traptype,
			(int)res_version))
		FUNC0(CERR_NORESOURCE);
	FUNC1(0);
}