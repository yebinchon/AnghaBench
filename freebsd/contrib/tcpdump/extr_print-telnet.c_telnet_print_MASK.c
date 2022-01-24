#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  scalar_t__ u_char ;
struct TYPE_6__ {int ndo_vflag; scalar_t__ ndo_Xflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ const IAC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,scalar_t__ const*,int,int) ; 
 int FUNC3 (TYPE_1__*,scalar_t__ const*,scalar_t__,int) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC4(netdissect_options *ndo, const u_char *sp, u_int length)
{
	int first = 1;
	const u_char *osp;
	int l;

	osp = sp;

	FUNC1(*sp);
	while (length > 0 && *sp == IAC) {
		/*
		 * Parse the Telnet command without printing it,
		 * to determine its length.
		 */
		l = FUNC3(ndo, sp, length, 0);
		if (l < 0)
			break;

		/*
		 * now print it
		 */
		if (ndo->ndo_Xflag && 2 < ndo->ndo_vflag) {
			if (first)
				FUNC0((ndo, "\nTelnet:"));
			FUNC2(ndo, "\n", sp, l, sp - osp);
			if (l > 8)
				FUNC0((ndo, "\n\t\t\t\t"));
			else
				FUNC0((ndo, "%*s\t", (8 - l) * 3, ""));
		} else
			FUNC0((ndo, "%s", (first) ? " [telnet " : ", "));

		(void)FUNC3(ndo, sp, length, 1);
		first = 0;

		sp += l;
		length -= l;
		FUNC1(*sp);
	}
	if (!first) {
		if (ndo->ndo_Xflag && 2 < ndo->ndo_vflag)
			FUNC0((ndo, "\n"));
		else
			FUNC0((ndo, "]"));
	}
	return;
trunc:
	FUNC0((ndo, "%s", tstr));
}