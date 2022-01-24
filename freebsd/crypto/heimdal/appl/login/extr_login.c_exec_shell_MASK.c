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
 char const* _PATH_BSHELL ; 
 int FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  env ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (char const*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,char const*) ; 

__attribute__((used)) static void
FUNC10(const char *shell, int fallback)
{
    char *sh;
    const char *p;

    FUNC4(NULL);
    if(FUNC5() < 0)
	FUNC8("login process");
    FUNC6();

    p = FUNC7(shell, '/');
    if(p)
	p++;
    else
	p = shell;
    if (FUNC0(&sh, "-%s", p) == -1)
	FUNC2(1, "Out of memory");
    FUNC3(shell, sh, NULL, env);
    if(fallback){
	FUNC9("Can't exec %s, trying %s",
	      shell, _PATH_BSHELL);
	FUNC3(_PATH_BSHELL, "-sh", NULL, env);
	FUNC1(1, "%s", _PATH_BSHELL);
    }
    FUNC1(1, "%s", shell);
}