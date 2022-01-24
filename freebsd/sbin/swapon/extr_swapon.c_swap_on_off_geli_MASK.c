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
struct stat {int dummy; } ;

/* Variables and functions */
 scalar_t__ SWAPON ; 
 int /*<<< orphan*/  _PATH_GELI ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ qflag ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (char const*,struct stat*) ; 
 char* FUNC3 (char const*) ; 
 char* FUNC4 (char*) ; 
 char const* FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 scalar_t__ which_prog ; 

__attribute__((used)) static const char *
FUNC7(const char *name, char *mntops, int doingall)
{
	struct stat sb;
	char *dname, *args;
	int error;

	error = FUNC2(name, &sb);

	if (which_prog == SWAPON) do {
		/* Skip if the .eli device already exists. */
		if (error == 0)
			break;

		args = FUNC4(mntops);
		if (args == NULL)
			return (NULL);

		dname = FUNC3(name);
		if (dname == NULL) {
			FUNC0(args);
			return (NULL);
		}

		error = FUNC1(NULL, "%s onetime%s %s", _PATH_GELI, args,
		    dname);

		FUNC0(dname);
		FUNC0(args);

		if (error) {
			/* error occurred during creation. */
			if (qflag == 0)
				FUNC6("%s: Invalid parameters", name);
			return (NULL);
		}
	} while (0);

	return (FUNC5(name, doingall));
}