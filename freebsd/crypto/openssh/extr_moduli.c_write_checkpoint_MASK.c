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
typedef  scalar_t__ u_int32_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,char*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int FUNC8 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(char *cpfile, u_int32_t lineno)
{
	FILE *fp;
	char tmp[PATH_MAX];
	int r;

	r = FUNC8(tmp, sizeof(tmp), "%s.XXXXXXXXXX", cpfile);
	if (r == -1 || r >= PATH_MAX) {
		FUNC5("write_checkpoint: temp pathname too long");
		return;
	}
	if ((r = FUNC6(tmp)) == -1) {
		FUNC5("mkstemp(%s): %s", tmp, FUNC9(errno));
		return;
	}
	if ((fp = FUNC3(r, "w")) == NULL) {
		FUNC5("write_checkpoint: fdopen: %s", FUNC9(errno));
		FUNC10(tmp);
		FUNC0(r);
		return;
	}
	if (FUNC4(fp, "%lu\n", (unsigned long)lineno) > 0 && FUNC2(fp) == 0
	    && FUNC7(tmp, cpfile) == 0)
		FUNC1("wrote checkpoint line %lu to '%s'",
		    (unsigned long)lineno, cpfile);
	else
		FUNC5("failed to write to checkpoint file '%s': %s", cpfile,
		    FUNC9(errno));
}