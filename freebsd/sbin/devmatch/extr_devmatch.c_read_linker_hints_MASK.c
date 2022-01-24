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
typedef  int /*<<< orphan*/  fn ;

/* Variables and functions */
 int LINKER_HINTS_VERSION ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hints ; 
 void* hints_end ; 
 char* linker_hints ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/ * FUNC4 (char*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 char* FUNC6 (char**,char*) ; 
 scalar_t__ FUNC7 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 

__attribute__((used)) static void
FUNC9(void)
{
	char fn[MAXPATHLEN];
	char *modpath, *p, *q;
	size_t buflen, len;

	if (linker_hints == NULL) {
		if (FUNC7("kern.module_path", NULL, &buflen, NULL, 0) < 0)
			FUNC1(1, "Can't find kernel module path.");
		modpath = FUNC3(buflen);
		if (modpath == NULL)
			FUNC0(1, "Can't get memory for modpath.");
		if (FUNC7("kern.module_path", modpath, &buflen, NULL, 0) < 0)
			FUNC1(1, "Can't find kernel module path.");
		p = modpath;
		while ((q = FUNC6(&p, ";")) != NULL) {
			FUNC5(fn, sizeof(fn), "%s/linker.hints", q);
			hints = FUNC4(fn, &len);
			if (hints == NULL)
				continue;
			break;
		}
		if (q == NULL)
			FUNC1(1, "Can't read linker hints file.");
	} else {
		hints = FUNC4(linker_hints, &len);
		if (hints == NULL)
			FUNC0(1, "Can't open %s for reading", fn);
	}

	if (*(int *)(intptr_t)hints != LINKER_HINTS_VERSION) {
		FUNC8("Linker hints version %d doesn't match expected %d.",
		    *(int *)(intptr_t)hints, LINKER_HINTS_VERSION);
		FUNC2(hints);
		hints = NULL;
	}
	if (hints != NULL)
		hints_end = (void *)((intptr_t)hints + (intptr_t)len);
}