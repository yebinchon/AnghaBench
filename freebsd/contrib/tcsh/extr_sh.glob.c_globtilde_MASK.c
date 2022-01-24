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
typedef  char Char ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_NOHOME ; 
 int /*<<< orphan*/  ERR_UNKUSER ; 
 int /*<<< orphan*/  STRnonomatch ; 
 char* FUNC0 (char*,int) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static Char *
FUNC10(Char *s)
{
    Char *name, *u, *home, *res;

    u = s;
    for (s++; *s && *s != '/' && *s != ':'; s++)
	continue;
    name = FUNC0(u + 1, s - (u + 1));
    FUNC4(name, xfree);
    home = FUNC6(name);
    if (home == NULL) {
	if (FUNC3(STRnonomatch)) {
	    FUNC5(name);
	    return u;
	}
	if (*name)
	    FUNC8(ERR_UNKUSER, FUNC7(name));
	else
	    FUNC8(ERR_NOHOME);
    }
    FUNC5(name);
    if (home[0] == '/' && home[1] == '\0' && s[0] == '/')
	res = FUNC1(s);
    else
	res = FUNC2(home, s);
    FUNC9(home);
    FUNC9(u);
    return res;
}