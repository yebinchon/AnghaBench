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
 char* default_bootfiles ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 char* FUNC3 (char const*,char) ; 
 size_t FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 

__attribute__((used)) static char *
FUNC6(int try)
{
	static char *name = NULL;
	const char	*spec, *ep;
	size_t	len;

	/* we use dynamic storage */
	if (name != NULL) {
		FUNC0(name);
		name = NULL;
	}

	/*
	 * Try $bootfile, then try our builtin default
	 */
	if ((spec = FUNC1("bootfile")) == NULL)
		spec = default_bootfiles;

	while ((try > 0) && (spec != NULL)) {
		spec = FUNC3(spec, ';');
		if (spec)
			spec++;	/* skip over the leading ';' */
		try--;
	}
	if (spec != NULL) {
		if ((ep = FUNC3(spec, ';')) != NULL) {
			len = ep - spec;
		} else {
			len = FUNC4(spec);
		}
		name = FUNC2(len + 1);
		FUNC5(name, spec, len);
		name[len] = 0;
	}
	if (name && name[0] == 0) {
		FUNC0(name);
		name = NULL;
	}
	return(name);
}