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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  editing ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ttyout ; 
 scalar_t__ verbose ; 

void
FUNC4(int argc, char *argv[])
{

#ifdef NO_EDITCOMPLETE
	if (argc == 0) {
		UPRINTF("usage: %s\n", argv[0]);
		code = -1;
		return;
	}
	if (verbose)
		fputs("Editing support not compiled in; ignoring command.\n",
		    ttyout);
#else	/* !def NO_EDITCOMPLETE */
	code = FUNC3(argc, argv, &editing, "Editing mode");
	FUNC1();
#endif	/* !def NO_EDITCOMPLETE */
}