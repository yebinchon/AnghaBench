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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int LEASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  path_dhclient_db ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(void)
{
	FILE	*cfile;
	char	*val;
	int	 token;

	FUNC2(path_dhclient_db);

	/* Open the lease file.   If we can't open it, just return -
	   we can safely trust the server to remember our state. */
	if ((cfile = FUNC1(path_dhclient_db, "r")) == NULL)
		return;
	do {
		token = FUNC3(&val, cfile);
		if (token == EOF)
			break;
		if (token != LEASE) {
			FUNC6("Corrupt lease file - possible data loss!");
			FUNC5(cfile);
			break;
		} else
			FUNC4(cfile, 0);

	} while (1);
	FUNC0(cfile);
}