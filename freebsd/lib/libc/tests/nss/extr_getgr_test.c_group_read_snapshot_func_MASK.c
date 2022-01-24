#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct group {int /*<<< orphan*/  gr_mem; TYPE_1__* gr_passwd; TYPE_1__* gr_name; int /*<<< orphan*/  gr_gid; } ;
typedef  int /*<<< orphan*/  gid_t ;
struct TYPE_5__ {int /*<<< orphan*/  sl_str; } ;
typedef  TYPE_1__ StringList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct group*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 void* FUNC7 (char*) ; 
 char* FUNC8 (char**,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC10(struct group *grp, char *line)
{
	StringList *sl;
	char *s, *ps, *ts;
	const char *sep;
	int i;

	FUNC3("1 line read from snapshot:\n%s\n", line);

	i = 0;
	sl = NULL;
	ps = line;
	sep = ":";
	FUNC2(grp, 0, sizeof(struct group));
	while ((s = FUNC8(&ps, sep)) != NULL) {
		switch (i) {
		case 0:
			grp->gr_name = FUNC7(s);
			FUNC0(grp->gr_name != NULL);
			break;

		case 1:
			grp->gr_passwd = FUNC7(s);
			FUNC0(grp->gr_passwd != NULL);
			break;

		case 2:
			grp->gr_gid = (gid_t)FUNC9(s, &ts, 10);
			if (*ts != '\0') {
				FUNC1(grp->gr_name);
				FUNC1(grp->gr_passwd);
				grp->gr_name = NULL;
				grp->gr_passwd = NULL;
				return (-1);
			}
			/* Change to parsing groups. */
			sep = ",";
			break;

		default:
			if (sl == NULL) {
				if (FUNC6(s, "(null)") == 0)
					return (0);

				sl = FUNC5();
				FUNC0(sl != NULL);

				if (FUNC6(s, "nomem") != 0) {
					ts = FUNC7(s);
					FUNC0(ts != NULL);
					FUNC4(sl, ts);
				}
			} else {
				ts = FUNC7(s);
				FUNC0(ts != NULL);
				FUNC4(sl, ts);
			}
			break;
		}
		++i;
	}

	if (i < 3) {
		FUNC1(grp->gr_name);
		FUNC1(grp->gr_passwd);
		FUNC2(grp, 0, sizeof(struct group));
		return (-1);
	}

	FUNC4(sl, NULL);
	grp->gr_mem = sl->sl_str;

	/* NOTE: is it a dirty hack or not? */
	FUNC1(sl);
	return (0);
}