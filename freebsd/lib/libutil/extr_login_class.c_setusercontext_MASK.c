#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
typedef  char* u_long ;
struct rtprio {scalar_t__ prio; int /*<<< orphan*/  type; } ;
struct passwd {char* pw_name; scalar_t__ pw_gid; } ;
typedef  scalar_t__ rlim_t ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  mac_t ;
struct TYPE_10__ {char* lc_class; } ;
typedef  TYPE_1__ login_cap_t ;
struct TYPE_11__ {int /*<<< orphan*/  def; } ;

/* Variables and functions */
 char* LOGIN_DEFCLASS ; 
 int /*<<< orphan*/  LOGIN_DEFPRI ; 
 int /*<<< orphan*/  LOGIN_DEFUMASK ; 
 unsigned int LOGIN_SETGROUP ; 
 unsigned int LOGIN_SETLOGIN ; 
 unsigned int LOGIN_SETLOGINCLASS ; 
 unsigned int LOGIN_SETMAC ; 
 unsigned int LOGIN_SETPATH ; 
 unsigned int LOGIN_SETPRIORITY ; 
 unsigned int LOGIN_SETUMASK ; 
 unsigned int LOGIN_SETUSER ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 scalar_t__ PRIO_MAX ; 
 scalar_t__ PRIO_MIN ; 
 int /*<<< orphan*/  PRIO_PROCESS ; 
 int /*<<< orphan*/  RTP_PRIO_IDLE ; 
 scalar_t__ RTP_PRIO_MAX ; 
 scalar_t__ RTP_PRIO_MIN ; 
 int /*<<< orphan*/  RTP_PRIO_REALTIME ; 
 int /*<<< orphan*/  RTP_SET ; 
 int /*<<< orphan*/  _PATH_DEFPATH ; 
 int /*<<< orphan*/  _PATH_STDPATH ; 
 int errno ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct passwd const*) ; 
 TYPE_1__* FUNC6 (struct passwd const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_4__* pathvars ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rtprio*) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (char*) ; 
 int FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,struct passwd const*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

int
FUNC21(login_cap_t *lc, const struct passwd *pwd, uid_t uid, unsigned int flags)
{
    rlim_t	p;
    mode_t	mymask;
    login_cap_t *llc = NULL;
    struct rtprio rtp;
    int error;

    if (lc == NULL) {
	if (pwd != NULL && (lc = FUNC5(pwd)) != NULL)
	    llc = lc; /* free this when we're done */
    }

    if (flags & LOGIN_SETPATH)
	pathvars[0].def = uid ? _PATH_DEFPATH : _PATH_STDPATH;

    /* we need a passwd entry to set these */
    if (pwd == NULL)
	flags &= ~(LOGIN_SETGROUP | LOGIN_SETLOGIN | LOGIN_SETMAC);

    /* Set the process priority */
    if (flags & LOGIN_SETPRIORITY) {
	p = FUNC3(lc, "priority", LOGIN_DEFPRI, LOGIN_DEFPRI);

	if (p > PRIO_MAX) {
	    rtp.type = RTP_PRIO_IDLE;
	    p -= PRIO_MAX + 1;
	    rtp.prio = p > RTP_PRIO_MAX ? RTP_PRIO_MAX : p;
	    if (FUNC11(RTP_SET, 0, &rtp))
		FUNC19(LOG_WARNING, "rtprio '%s' (%s): %m",
		    pwd ? pwd->pw_name : "-",
		    lc ? lc->lc_class : LOGIN_DEFCLASS);
	} else if (p < PRIO_MIN) {
	    rtp.type = RTP_PRIO_REALTIME;
	    p -= PRIO_MIN - RTP_PRIO_MAX;
	    rtp.prio = p < RTP_PRIO_MIN ? RTP_PRIO_MIN : p;
	    if (FUNC11(RTP_SET, 0, &rtp))
		FUNC19(LOG_WARNING, "rtprio '%s' (%s): %m",
		    pwd ? pwd->pw_name : "-",
		    lc ? lc->lc_class : LOGIN_DEFCLASS);
	} else {
	    if (FUNC16(PRIO_PROCESS, 0, (int)p) != 0)
		FUNC19(LOG_WARNING, "setpriority '%s' (%s): %m",
		    pwd ? pwd->pw_name : "-",
		    lc ? lc->lc_class : LOGIN_DEFCLASS);
	}
    }

    /* Setup the user's group permissions */
    if (flags & LOGIN_SETGROUP) {
	if (FUNC12(pwd->pw_gid) != 0) {
	    FUNC19(LOG_ERR, "setgid(%lu): %m", (u_long)pwd->pw_gid);
	    FUNC2(llc);
	    return (-1);
	}
	if (FUNC1(pwd->pw_name, pwd->pw_gid) == -1) {
	    FUNC19(LOG_ERR, "initgroups(%s,%lu): %m", pwd->pw_name,
		   (u_long)pwd->pw_gid);
	    FUNC2(llc);
	    return (-1);
	}
    }

    /* Set up the user's MAC label. */
    if ((flags & LOGIN_SETMAC) && FUNC9(NULL) == 1) {
	const char *label_string;
	mac_t label;

	label_string = FUNC4(lc, "label", NULL, NULL);
	if (label_string != NULL) {
	    if (FUNC8(&label, label_string) == -1) {
		FUNC19(LOG_ERR, "mac_from_text('%s') for %s: %m",
		    pwd->pw_name, label_string);
		return (-1);
	    }
	    if (FUNC10(label) == -1)
		error = errno;
	    else
		error = 0;
	    FUNC7(label);
	    if (error != 0) {
		FUNC19(LOG_ERR, "mac_set_proc('%s') for %s: %s",
		    label_string, pwd->pw_name, FUNC18(error));
		return (-1);
	    }
	}
    }

    /* Set the sessions login */
    if ((flags & LOGIN_SETLOGIN) && FUNC13(pwd->pw_name) != 0) {
	FUNC19(LOG_ERR, "setlogin(%s): %m", pwd->pw_name);
	FUNC2(llc);
	return (-1);
    }

    /* Inform the kernel about current login class */
    if (lc != NULL && lc->lc_class != NULL && (flags & LOGIN_SETLOGINCLASS)) {
	error = FUNC14(lc->lc_class);
	if (error != 0) {
	    FUNC19(LOG_ERR, "setloginclass(%s): %m", lc->lc_class);
#ifdef notyet
	    login_close(llc);
	    return (-1);
#endif
	}
    }

    mymask = (flags & LOGIN_SETUMASK) ? FUNC20(LOGIN_DEFUMASK) : 0;
    mymask = FUNC15(lc, pwd, mymask, flags);
    FUNC2(llc);

    /* This needs to be done after anything that needs root privs */
    if ((flags & LOGIN_SETUSER) && FUNC17(uid) != 0) {
	FUNC19(LOG_ERR, "setuid(%lu): %m", (u_long)uid);
	return (-1);	/* Paranoia again */
    }

    /*
     * Now, we repeat some of the above for the user's private entries
     */
    if (FUNC0() == uid && (lc = FUNC6(pwd)) != NULL) {
	mymask = FUNC15(lc, pwd, mymask, flags);
	FUNC2(lc);
    }

    /* Finally, set any umask we've found */
    if (flags & LOGIN_SETUMASK)
	FUNC20(mymask);

    return (0);
}