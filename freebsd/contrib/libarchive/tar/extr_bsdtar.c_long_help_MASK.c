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
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 () ; 
 char* long_help_msg ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(void)
{
	const char	*prog;
	const char	*p;

	prog = FUNC2();

	FUNC0(stderr);

	p = (FUNC5(prog,"bsdtar") != 0) ? "(bsdtar)" : "";
	FUNC3("%s%s: manipulate archive files\n", prog, p);

	for (p = long_help_msg; *p != '\0'; p++) {
		if (*p == '%') {
			if (p[1] == 'p') {
				FUNC1(prog, stdout);
				p++;
			} else
				FUNC4('%');
		} else
			FUNC4(*p);
	}
	FUNC6();
}