#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {char* pw_dir; int /*<<< orphan*/  pw_gid; int /*<<< orphan*/  pw_uid; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lc_class; int /*<<< orphan*/ * lc_cap; int /*<<< orphan*/ * lc_style; } ;
typedef  TYPE_1__ login_cap_t ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 char* LOGIN_DEFCLASS ; 
 char* LOGIN_MECLASS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int MAXPATHLEN ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 char* _FILE_LOGIN_CONF ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ **,char**,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  lc_object_count ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char*,int) ; 
 char* path_login_conf ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,int,char*,char const*,char*) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*,char const*,...) ; 

login_cap_t *
FUNC15(char const *name, const struct passwd *pwd)
{
    login_cap_t	*lc;
  
    if ((lc = FUNC6(sizeof(login_cap_t))) != NULL) {
	int         r, me, i = 0;
	uid_t euid = 0;
	gid_t egid = 0;
	const char  *msg = NULL;
	const char  *dir;
	char	    userpath[MAXPATHLEN];

	static char *login_dbarray[] = { NULL, NULL, NULL };

	me = (name != NULL && FUNC12(name, LOGIN_MECLASS) == 0);
	dir = (!me || pwd == NULL) ? NULL : pwd->pw_dir;
	/*
	 * Switch to user mode before checking/reading its ~/.login_conf
	 * - some NFSes have root read access disabled.
	 *
	 * XXX: This fails to configure additional groups.
	 */
	if (dir) {
	    euid = FUNC5();
	    egid = FUNC4();
	    (void)FUNC9(pwd->pw_gid);
	    (void)FUNC10(pwd->pw_uid);
	}

	if (dir && FUNC11(userpath, MAXPATHLEN, "%s/%s", dir,
			    _FILE_LOGIN_CONF) < MAXPATHLEN) {
	    if (FUNC0(userpath, pwd->pw_uid, pwd->pw_gid) != -1)
		login_dbarray[i++] = userpath;
	}
	/*
	 * XXX: Why to add the system database if the class is `me'?
	 */
	if (FUNC0(path_login_conf, 0, 0) != -1)
	    login_dbarray[i++] = path_login_conf;
	login_dbarray[i] = NULL;

	FUNC7(lc, 0, sizeof(login_cap_t));
	lc->lc_cap = lc->lc_class = lc->lc_style = NULL;

	if (name == NULL || *name == '\0')
	    name = LOGIN_DEFCLASS;

	switch (FUNC1(&lc->lc_cap, login_dbarray, name)) {
	case -1:		/* Failed, entry does not exist */
	    if (me)
		break;	/* Don't retry default on 'me' */
	    if (i == 0)
	        r = -1;
	    else if ((r = FUNC8(login_dbarray[0], O_RDONLY | O_CLOEXEC)) >= 0)
	        FUNC2(r);
	    /*
	     * If there's at least one login class database,
	     * and we aren't searching for a default class
	     * then complain about a non-existent class.
	     */
	    if (r >= 0 || FUNC12(name, LOGIN_DEFCLASS) != 0)
		FUNC14(LOG_ERR, "login_getclass: unknown class '%s'", name);
	    /* fall-back to default class */
	    name = LOGIN_DEFCLASS;
	    msg = "%s: no default/fallback class '%s'";
	    if (FUNC1(&lc->lc_cap, login_dbarray, name) != 0 && r >= 0)
		break;
	    /* FALLTHROUGH - just return system defaults */
	case 0:		/* success! */
	    if ((lc->lc_class = FUNC13(name)) != NULL) {
		if (dir) {
		    (void)FUNC10(euid);
		    (void)FUNC9(egid);
		}
		++lc_object_count;
		return lc;
	    }
	    msg = "%s: strdup: %m";
	    break;
	case -2:
	    msg = "%s: retrieving class information: %m";
	    break;
	case -3:
	    msg = "%s: 'tc=' reference loop '%s'";
	    break;
	case 1:
	    msg = "couldn't resolve 'tc=' reference in '%s'";
	    break;
	default:
	    msg = "%s: unexpected cgetent() error '%s': %m";
	    break;
	}
	if (dir) {
	    (void)FUNC10(euid);
	    (void)FUNC9(egid);
	}
	if (msg != NULL)
	    FUNC14(LOG_ERR, msg, "login_getclass", name);
	FUNC3(lc);
    }

    return NULL;
}