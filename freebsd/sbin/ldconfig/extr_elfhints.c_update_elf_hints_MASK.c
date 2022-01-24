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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

void
FUNC7(const char *hintsfile, int argc, char **argv, int merge)
{
	int	i;

	if (merge)
		FUNC3(hintsfile, 0);
	for (i = 0;  i < argc;  i++) {
		struct stat	s;

		if (FUNC4(argv[i], &s) == -1)
			FUNC5("warning: %s", argv[i]);
		else if (FUNC0(s.st_mode))
			FUNC2(hintsfile, argv[i]);
		else
			FUNC1(hintsfile, argv[i], 0);
	}
	FUNC6(hintsfile);
}