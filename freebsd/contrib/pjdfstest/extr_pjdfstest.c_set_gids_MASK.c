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
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  _SC_NGROUPS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char**,int /*<<< orphan*/ ) ; 
 long FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(char *gids)
{
	gid_t *gidset;
	long ngroups;
	char *g, *endp;
	unsigned i;

	ngroups = FUNC11(_SC_NGROUPS_MAX);
	FUNC0(ngroups > 0);
	gidset = FUNC5(sizeof(*gidset) * ngroups);
	FUNC0(gidset != NULL);
	for (i = 0, g = FUNC9(gids, ","); g != NULL;
	    g = FUNC9(NULL, ","), i++) {
		if ((long)i >= ngroups) {
			FUNC2(stderr, "too many gids\n");
			FUNC1(1);
		}
		gidset[i] = FUNC10(g, &endp, 0);
		if (*endp != '\0' && !FUNC4((unsigned char)*endp)) {
			FUNC2(stderr, "invalid gid '%s' - number expected\n",
			    g);
			FUNC1(1);
		}
	}
	if (FUNC7(i, gidset) < 0) {
		FUNC2(stderr, "cannot change groups: %s\n", FUNC8(errno));
		FUNC1(1);
	}
	if (FUNC6(gidset[0]) < 0) {
		FUNC2(stderr, "cannot change effective gid: %s\n",
		    FUNC8(errno));
		FUNC1(1);
	}
	FUNC3(gidset);
}