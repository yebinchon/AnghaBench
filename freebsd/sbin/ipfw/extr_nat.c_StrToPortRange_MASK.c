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
typedef  scalar_t__ u_short ;
struct servent {int /*<<< orphan*/  s_port; } ;
typedef  int /*<<< orphan*/  port_range ;

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 struct servent* FUNC4 (char const*,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,char*,scalar_t__*,scalar_t__*) ; 
 char* FUNC7 (char const*,char) ; 
 scalar_t__ FUNC8 (char const*,char**,int) ; 

__attribute__((used)) static int
FUNC9 (const char* str, const char* proto, port_range *portRange)
{
	char*	   sep;
	struct servent*	sp;
	char*		end;
	u_short	 loPort;
	u_short	 hiPort;

	/* First see if this is a service, return corresponding port if so. */
	sp = FUNC4 (str,proto);
	if (sp) {
		FUNC1(*portRange, FUNC5(sp->s_port));
		FUNC2(*portRange, 1);
		return 0;
	}

	/* Not a service, see if it's a single port or port range. */
	sep = FUNC7 (str, '-');
	if (sep == NULL) {
		FUNC1(*portRange, FUNC8(str, &end, 10));
		if (end != str) {
			/* Single port. */
			FUNC2(*portRange, 1);
			return 0;
		}

		/* Error in port range field. */
		FUNC3 (EX_DATAERR, "%s/%s: unknown service", str, proto);
	}

	/* Port range, get the values and sanity check. */
	FUNC6 (str, "%hu-%hu", &loPort, &hiPort);
	FUNC1(*portRange, loPort);
	FUNC2(*portRange, 0);	/* Error by default */
	if (loPort <= hiPort)
		FUNC2(*portRange, hiPort - loPort + 1);

	if (FUNC0(*portRange) == 0)
		FUNC3 (EX_DATAERR, "invalid port range %s", str);

	return 0;
}