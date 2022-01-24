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
typedef  char* efidp ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char const*,char*) ; 
 size_t FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static int
FUNC6(const char *efimedia, const char *relpath, efidp *dp)
{
	char *fp, *dptxt = NULL, *cp, *rp;
	int rv = 0;
	efidp out = NULL;
	size_t len;

	rp = FUNC5(relpath);
	for (cp = rp; *cp; cp++)
		if (*cp == '/')
			*cp = '\\';
	fp = FUNC4(rp);
	FUNC2(rp);
	if (fp == NULL) {
		rv = ENOMEM;
		goto errout;
	}

	FUNC0(&dptxt, "%s/%s", efimedia, fp);
	out = FUNC3(8192);
	len = FUNC1(dptxt, out, 8192);
	if (len > 8192) {
		rv = ENOMEM;
		goto errout;
	}
	if (len == 0) {
		rv = EINVAL;
		goto errout;
	}

	*dp = out;
errout:
	if (rv) {
		FUNC2(out);
	}
	FUNC2(dptxt);
	FUNC2(fp);

	return rv;
}