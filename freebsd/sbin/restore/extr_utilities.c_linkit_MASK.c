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
struct stat {scalar_t__ st_flags; } ;

/* Variables and functions */
 int FAIL ; 
 int GOOD ; 
 int HARDLINK ; 
 int /*<<< orphan*/  Nflag ; 
 int SYMLINK ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ uflag ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 

int
FUNC9(char *existing, char *new, int type)
{

	/* if we want to unlink first, do it now so *link() won't fail */
	if (uflag && !Nflag)
		(void)FUNC7(new);

	if (type == SYMLINK) {
		if (!Nflag && FUNC6(existing, new) < 0) {
			FUNC1(stderr,
			    "warning: cannot create symbolic link %s->%s: %s\n",
			    new, existing, FUNC5(errno));
			return (FAIL);
		}
	} else if (type == HARDLINK) {
		int ret;

		if (!Nflag && (ret = FUNC2(existing, new)) < 0) {
			struct stat s;

			/*
			 * Most likely, the schg flag is set.  Clear the
			 * flags and try again.
			 */
			if (FUNC4(existing, &s) == 0 && s.st_flags != 0 &&
			    FUNC0(existing, 0) == 0) {
				ret = FUNC2(existing, new);
				FUNC0(existing, s.st_flags);
			}
			if (ret < 0) {
				FUNC1(stderr, "warning: cannot create "
				    "hard link %s->%s: %s\n",
				    new, existing, FUNC5(errno));
				return (FAIL);
			}
		}
	} else {
		FUNC3("linkit: unknown type %d\n", type);
		return (FAIL);
	}
	FUNC8(stdout, "Create %s link %s->%s\n",
		type == SYMLINK ? "symbolic" : "hard", new, existing);
	return (GOOD);
}