#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct TYPE_3__ {char* name; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  TYPE_1__ FREF ;

/* Variables and functions */
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  O_PATH ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct stat*) ; 
 size_t FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(
	SCR *sp,
	FREF *frp,
	struct stat *sbp,
	int *existsp)
{
	int savech;
	size_t len;
	int found;
	char *name, *p, *t, *path;

	/*
	 * If the name is NULL or an explicit reference (i.e., the first
	 * component is . or ..) ignore the O_PATH option.
	 */
	name = frp->name;
	if (name == NULL) {
		*existsp = 0;
		return (0);
	}
	if (name[0] == '/' || (name[0] == '.' &&
	    (name[1] == '/' || (name[1] == '.' && name[2] == '/')))) {
		*existsp = !FUNC4(name, sbp);
		return (0);
	}

	/* Try . */
	if (!FUNC4(name, sbp)) {
		*existsp = 1;
		return (0);
	}

	/* Try the O_PATH option values. */
	for (found = 0, p = t = FUNC0(sp, O_PATH);; ++p)
		if (*p == ':' || *p == '\0') {
			/*
			 * Ignore the empty strings and ".", since we've already
			 * tried the current directory.
			 */
			if (t < p && (p - t != 1 || *t != '.')) {
				savech = *p;
				*p = '\0';
				if ((path = FUNC2(t, name)) == NULL) {
					FUNC3(sp, M_SYSERR, NULL);
					break;
				}
				len = FUNC5(path);
				*p = savech;
				if (!FUNC4(path, sbp)) {
					found = 1;
					break;
				}
				FUNC1(path);
			}
			t = p + 1;
			if (*p == '\0')
				break;
		}

	/* If we found it, build a new pathname and discard the old one. */
	if (found) {
		FUNC1(frp->name);
		frp->name = path;
	}
	*existsp = found;
	return (0);
}