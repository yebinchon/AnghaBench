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
 int /*<<< orphan*/  ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static int
FUNC3(const char *datasetname, char *parent, int parentsize)
{
	char *cp;

	/*
	 * Remove the @bla or /bla from the end of the name to get the parent.
	 */
	(void) FUNC1(parent, datasetname, parentsize);
	cp = FUNC2(parent, '@');
	if (cp != NULL) {
		cp[0] = '\0';
	} else {
		cp = FUNC2(parent, '/');
		if (cp == NULL)
			return (FUNC0(ENOENT));
		cp[0] = '\0';
	}

	return (0);
}