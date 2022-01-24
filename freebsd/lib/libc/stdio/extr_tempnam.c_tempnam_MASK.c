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
 int /*<<< orphan*/  MAXPATHLEN ; 
 char* P_tmpdir ; 
 char* _PATH_TMP ; 
 char* FUNC0 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*,char*,char const*,...) ; 
 int FUNC6 (char*) ; 

char *
FUNC7(const char *dir, const char *pfx)
{
	int sverrno;
	char *f, *name;

	if (!(name = FUNC4(MAXPATHLEN)))
		return(NULL);

	if (!pfx)
		pfx = "tmp.";

	if (FUNC3() == 0 && (f = FUNC2("TMPDIR"))) {
		(void)FUNC5(name, MAXPATHLEN, "%s%s%sXXXXXX", f,
		    *(f + FUNC6(f) - 1) == '/'? "": "/", pfx);
		if ((f = FUNC0(name)))
			return(f);
	}

	if ((f = (char *)dir)) {
		(void)FUNC5(name, MAXPATHLEN, "%s%s%sXXXXXX", f,
		    *(f + FUNC6(f) - 1) == '/'? "": "/", pfx);
		if ((f = FUNC0(name)))
			return(f);
	}

	f = P_tmpdir;
	(void)FUNC5(name, MAXPATHLEN, "%s%sXXXXXX", f, pfx);
	if ((f = FUNC0(name)))
		return(f);

	f = _PATH_TMP;
	(void)FUNC5(name, MAXPATHLEN, "%s%sXXXXXX", f, pfx);
	if ((f = FUNC0(name)))
		return(f);

	sverrno = errno;
	FUNC1(name);
	errno = sverrno;
	return(NULL);
}