#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {int integer; } ;
struct be {scalar_t__ type; TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 scalar_t__ BE_INETADDR ; 
 scalar_t__ BE_INT ; 
 scalar_t__ BE_OID ; 
 scalar_t__ BE_UNS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GT_ENTERPRISE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRAP ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,struct be*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct be*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void
FUNC5(netdissect_options *ndo,
              const u_char *np, u_int length)
{
	struct be elem;
	int count = 0, generic;

	FUNC1((ndo, " "));

	/* enterprise (oid) */
	if ((count = FUNC2(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_OID) {
		FUNC1((ndo, "[enterprise!=OID]"));
		FUNC3(ndo, &elem);
		return;
	}
	if (FUNC3(ndo, &elem) < 0)
		return;
	length -= count;
	np += count;

	FUNC1((ndo, " "));

	/* agent-addr (inetaddr) */
	if ((count = FUNC2(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_INETADDR) {
		FUNC1((ndo, "[agent-addr!=INETADDR]"));
		FUNC3(ndo, &elem);
		return;
	}
	if (FUNC3(ndo, &elem) < 0)
		return;
	length -= count;
	np += count;

	/* generic-trap (Integer) */
	if ((count = FUNC2(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_INT) {
		FUNC1((ndo, "[generic-trap!=INT]"));
		FUNC3(ndo, &elem);
		return;
	}
	generic = elem.data.integer;
	{
		char buf[20];
		FUNC1((ndo, " %s", FUNC0(generic)));
	}
	length -= count;
	np += count;

	/* specific-trap (Integer) */
	if ((count = FUNC2(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_INT) {
		FUNC1((ndo, "[specific-trap!=INT]"));
		FUNC3(ndo, &elem);
		return;
	}
	if (generic != GT_ENTERPRISE) {
		if (elem.data.integer != 0)
			FUNC1((ndo, "[specific-trap(%d)!=0]", elem.data.integer));
	} else
		FUNC1((ndo, " s=%d", elem.data.integer));
	length -= count;
	np += count;

	FUNC1((ndo, " "));

	/* time-stamp (TimeTicks) */
	if ((count = FUNC2(ndo, np, length, &elem)) < 0)
		return;
	if (elem.type != BE_UNS) {			/* XXX */
		FUNC1((ndo, "[time-stamp!=TIMETICKS]"));
		FUNC3(ndo, &elem);
		return;
	}
	if (FUNC3(ndo, &elem) < 0)
		return;
	length -= count;
	np += count;

	FUNC4(ndo, TRAP, np, length);
	return;
}