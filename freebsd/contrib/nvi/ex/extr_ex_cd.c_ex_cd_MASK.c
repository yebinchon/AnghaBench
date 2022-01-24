#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct passwd {char* pw_dir; } ;
struct TYPE_14__ {char* bp; int len; } ;
struct TYPE_13__ {int argc; TYPE_4__** argv; int /*<<< orphan*/  iflags; } ;
struct TYPE_12__ {TYPE_1__* frp; int /*<<< orphan*/  ep; } ;
struct TYPE_11__ {char* name; } ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ EXCMD ;
typedef  TYPE_4__ ARGS ;

/* Variables and functions */
 int /*<<< orphan*/  E_C_FORCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_MODIFIED ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  O_CDPATH ; 
 char* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*) ; 
 struct passwd* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 char* FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,char*,char*) ; 

int
FUNC14(SCR *sp, EXCMD *cmdp)
{
	struct passwd *pw;
	ARGS *ap;
	int savech;
	char *dir, *p, *t;
	char *buf;
	size_t dlen;

	/*
	 * !!!
	 * Historic practice is that the cd isn't attempted if the file has
	 * been modified, unless its name begins with a leading '/' or the
	 * force flag is set.
	 */
	if (FUNC1(sp->ep, F_MODIFIED) &&
	    !FUNC0(cmdp->iflags, E_C_FORCE) && sp->frp->name[0] != '/') {
		FUNC12(sp, M_ERR,
    "120|File modified since last complete write; write or use ! to override");
		return (1);
	}

	switch (cmdp->argc) {
	case 0:
		/* If no argument, change to the user's home directory. */
		if ((dir = FUNC8("HOME")) == NULL) {
			if ((pw = FUNC9(FUNC10())) == NULL ||
			    pw->pw_dir == NULL || pw->pw_dir[0] == '\0') {
				FUNC12(sp, M_ERR,
			   "121|Unable to find home directory location");
				return (1);
			}
			dir = pw->pw_dir;
		}
		break;
	case 1:
		FUNC2(sp, cmdp->argv[0]->bp, cmdp->argv[0]->len + 1, 
			 dir, dlen);
		break;
	default:
		FUNC4();
	}

	/*
	 * Try the current directory first.  If this succeeds, don't display
	 * a message, vi didn't historically, and it should be obvious to the
	 * user where they are.
	 */
	if (!FUNC5(dir))
		return (0);

	/*
	 * If moving to the user's home directory, or, the path begins with
	 * "/", "./" or "../", it's the only place we try.
	 */
	if (cmdp->argc == 0 ||
	    (ap = cmdp->argv[0])->bp[0] == '/' ||
	    (ap->len == 1 && ap->bp[0] == '.') ||
	    (ap->len >= 2 && ap->bp[0] == '.' && ap->bp[1] == '.' &&
	    (ap->bp[2] == '/' || ap->bp[2] == '\0')))
		goto err;

	/* Try the O_CDPATH option values. */
	for (p = t = FUNC3(sp, O_CDPATH);; ++p)
		if (*p == '\0' || *p == ':') {
			/*
			 * Ignore the empty strings and ".", since we've already
			 * tried the current directory.
			 */
			if (t < p && (p - t != 1 || *t != '.')) {
				savech = *p;
				*p = '\0';
				if ((buf = FUNC11(t, dir)) == NULL) {
					FUNC12(sp, M_SYSERR, NULL);
					return (1);
				}
				*p = savech;
				if (!FUNC5(buf)) {
					FUNC6(buf);
					if ((buf = FUNC7(NULL, 0)) != NULL) {
		FUNC13(sp, M_INFO, buf, "122|New current directory: %s");
						FUNC6(buf);
					}
					return (0);
				}
				FUNC6(buf);
			}
			t = p + 1;
			if (*p == '\0')
				break;
		}

err:	FUNC13(sp, M_SYSERR, dir, "%s");
	return (1);
}