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
typedef  TYPE_1__ TAGF ;
typedef  int /*<<< orphan*/  SCR ;

/* Variables and functions */
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,struct stat*) ; 
 size_t FUNC4 (char*) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static void
FUNC6(SCR *sp, TAGF *tfp, char *name, char **dirp, size_t *dlenp)
{
	struct stat sb;
	char *p, *buf;

	/*
	 * !!!
	 * If the tag file path is a relative path, see if it exists.  If it
	 * doesn't, look relative to the tags file path.  It's okay for a tag
	 * file to not exist, and historically, vi simply displayed a "new"
	 * file.  However, if the path exists relative to the tag file, it's
	 * pretty clear what's happening, so we may as well get it right.
	 */
	*dlenp = 0;
	if (name[0] != '/' &&
	    FUNC3(name, &sb) && (p = FUNC5(tfp->name, '/')) != NULL) {
		*p = '\0';
		if ((buf = FUNC1(tfp->name, name)) == NULL) {
			FUNC2(sp, M_SYSERR, NULL);
			return;
		}
		if (FUNC3(buf, &sb) == 0) {
			*dirp = tfp->name;
			*dlenp = FUNC4(*dirp);
		}
		FUNC0(buf);
		*p = '/';
	}
}