#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rt ;
struct TYPE_5__ {scalar_t__ set; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ ipfw_range_tlv ;
struct TYPE_6__ {scalar_t__ use_set; scalar_t__ do_pipe; int /*<<< orphan*/  do_quiet; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int /*<<< orphan*/  IPFW_RCFLAG_ALL ; 
 int /*<<< orphan*/  IPFW_RCFLAG_SET ; 
 int /*<<< orphan*/  IP_FW_XDEL ; 
 TYPE_4__ co ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC8 (char) ; 

void
FUNC9(int force)
{
	ipfw_range_tlv rt;

	if (!force && !co.do_quiet) { /* need to ask user */
		int c;

		FUNC7("Are you sure? [yn] ");
		FUNC4(stdout);
		do {
			c = FUNC8(FUNC5(stdin));
			while (c != '\n' && FUNC5(stdin) != '\n')
				if (FUNC3(stdin))
					return; /* and do not flush */
		} while (c != 'Y' && c != 'N');
		FUNC7("\n");
		if (c == 'N')	/* user said no */
			return;
	}
	if (co.do_pipe) {
		FUNC1();
		return;
	}
	/* `ipfw set N flush` - is the same that `ipfw delete set N` */
	FUNC6(&rt, 0, sizeof(rt));
	if (co.use_set != 0) {
		rt.set = co.use_set - 1;
		rt.flags = IPFW_RCFLAG_SET;
	} else
		rt.flags = IPFW_RCFLAG_ALL;
	if (FUNC0(IP_FW_XDEL, &rt) != 0)
			FUNC2(EX_UNAVAILABLE, "setsockopt(IP_FW_XDEL)");
	if (!co.do_quiet)
		FUNC7("Flushed all %s.\n", co.do_pipe ? "pipes" : "rules");
}