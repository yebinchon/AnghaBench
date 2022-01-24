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
struct env_lst {int /*<<< orphan*/  var; } ;

/* Variables and functions */
 int /*<<< orphan*/  TELOPT_NEW_ENVIRON ; 
 int /*<<< orphan*/  TELOPT_OLD_ENVIRON ; 
 struct env_lst* FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC6(unsigned char *var)
{
	struct env_lst *ep;

	if (FUNC5(TELOPT_NEW_ENVIRON)
#ifdef	OLD_ENVIRON
	    && my_state_is_wont(TELOPT_OLD_ENVIRON)
#endif
		) {
		FUNC4(stderr,
		    "Cannot send '%s': Telnet ENVIRON option not enabled\r\n",
									var);
		return;
	}
	ep = FUNC0(var);
	if (ep == 0) {
		FUNC4(stderr, "Cannot send '%s': variable not defined\r\n",
									var);
		return;
	}
	FUNC3();
	FUNC1(ep->var);
	FUNC2(0);
}