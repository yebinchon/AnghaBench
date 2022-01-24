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
struct passwd {char* pw_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 () ; 
 struct passwd* FUNC3 (char*) ; 
 struct passwd* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 char* FUNC7 (char*,char*) ; 
 char* FUNC8 (char*,int) ; 

char *
FUNC9(char *str)
{
	struct passwd *pwd;
	char *p, *t, *u, *h;

	/*
	 * This function always expands the content between the
	 * leading '~' and the first '/' or '\0' from the input.
	 * Return NULL whenever we fail to do so.
	 */
	if (*str != '~')
		return (NULL);
	p = str + 1;
	for (t = p; *t != '/' && *t != '\0'; ++t)
		continue;
	if (t == p) {
		/* ~ */
		if (FUNC6() != 0 ||
		    (h = FUNC1("HOME")) == NULL) {
			if (((h = FUNC2()) != NULL &&
			     (pwd = FUNC3(h)) != NULL) ||
			    (pwd = FUNC4(FUNC5())) != NULL)
				h = pwd->pw_dir;
			else
				return (NULL);
		}
	} else {
		/* ~user */
		if ((u = FUNC8(p, t - p)) == NULL)
			return (NULL);
		if ((pwd = FUNC3(u)) == NULL) {
			FUNC0(u);
			return (NULL);
		} else
			h = pwd->pw_dir;
		FUNC0(u);
	}

	for (; *t == '/' && *t != '\0'; ++t)
		continue;
	return (FUNC7(h, t));
}