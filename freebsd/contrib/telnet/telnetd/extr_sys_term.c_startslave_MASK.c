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
 int auth_level ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  net ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 

void
FUNC6(char *host, int autologin, char *autoname)
{
	int i;

#ifdef	AUTHENTICATION
	if (!autoname || !autoname[0])
		autologin = 0;

	if (autologin < auth_level) {
		fatal(net, "Authorization failed");
		exit(1);
	}
#endif


	if ((i = FUNC3()) < 0)
		FUNC2(net, "fork");
	if (i) {
	} else {
		FUNC4();
		FUNC5(host, autologin, autoname);
		/*NOTREACHED*/
	}
}