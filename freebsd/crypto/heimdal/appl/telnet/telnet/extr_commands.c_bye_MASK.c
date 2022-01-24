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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ connected ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  net ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int resettermname ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  toplevel ; 

__attribute__((used)) static int
FUNC7(int argc, char **argv)
{
    if (connected) {
	FUNC4(net, 2);
	FUNC3("Connection closed.\r\n");
	FUNC0(net);
	connected = 0;
	resettermname = 1;
#if	defined(AUTHENTICATION) || defined(ENCRYPTION)
	auth_encrypt_connect(connected);
#endif
	/* reset options */
	FUNC6();
    }
    if ((argc != 2) || (FUNC5(argv[1], "fromquit") != 0))
	FUNC2(toplevel, 1);
    return 0;	/* NOTREACHED */
}