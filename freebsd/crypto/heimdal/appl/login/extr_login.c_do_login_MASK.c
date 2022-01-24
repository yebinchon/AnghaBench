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
struct user_cap {char* ca_default; } ;
struct udb {long* ue_pcpulim; long* ue_jcpulim; int /*<<< orphan*/ * ue_nice; } ;
struct spwd {int dummy; } ;
struct passwd {scalar_t__ pw_uid; char const* pw_name; char* pw_dir; char const* pw_shell; scalar_t__ pw_gid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef  scalar_t__ gid_t ;
typedef  int /*<<< orphan*/ * cap_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ AUTH_KRB5 ; 
 int CLOCKS_PER_SEC ; 
 long CPUUNLIM ; 
 int /*<<< orphan*/  C_JOBPROCS ; 
 int /*<<< orphan*/  C_PROC ; 
 int /*<<< orphan*/  L_CPU ; 
 int MAXPATHLEN ; 
 int NSIG ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int S_IRUSR ; 
 int S_IWGRP ; 
 int S_IWUSR ; 
 size_t UDBRC_INTER ; 
 struct udb* UDB_NULL ; 
 char const* _PATH_DEFPATH ; 
 char* _PATH_ETC_ENVIRONMENT ; 
 char* _PATH_LIMITS_CONF ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ auth ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct passwd const*,struct spwd*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (char*,int) ; 
 scalar_t__ FUNC8 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct user_cap*) ; 
 struct group* FUNC16 (char*) ; 
 struct spwd* FUNC17 (char const*) ; 
 struct udb* FUNC18 (char const*) ; 
 scalar_t__ FUNC19 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct passwd const*) ; 
 int /*<<< orphan*/  FUNC22 (struct passwd const*) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 char* FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (char const*,struct passwd const*) ; 
 char* remote_host ; 
 scalar_t__ FUNC28 (scalar_t__) ; 
 scalar_t__ FUNC29 (char const*) ; 
 int FUNC30 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC31 (scalar_t__) ; 
 struct user_cap* FUNC32 (char const*) ; 
 int /*<<< orphan*/  FUNC33 (char const*) ; 
 int /*<<< orphan*/  FUNC34 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC35 (char const**,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC36 (char const*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC37 (char*,...) ; 

__attribute__((used)) static void
FUNC38(const struct passwd *pwd, char *tty, char *ttyn)
{
#ifdef HAVE_GETSPNAM
    struct spwd *sp;
#endif
    int rootlogin = (pwd->pw_uid == 0);
    gid_t tty_gid;
    struct group *gr;
    const char *home_dir;
    int i;

    if(!rootlogin)
	FUNC6();

#ifdef HAVE_GETSPNAM
    sp = getspnam(pwd->pw_name);
#endif

    FUNC36(pwd->pw_name, remote_host ? remote_host : "",
		tty, ttyn);

    gr = FUNC16 ("tty");
    if (gr != NULL)
	tty_gid = gr->gr_gid;
    else
	tty_gid = pwd->pw_gid;

    if (FUNC8 (ttyn, pwd->pw_uid, tty_gid) < 0) {
	FUNC37("chown %s", ttyn);
	if (rootlogin == 0)
	    FUNC13 (1);
    }

    if (FUNC7 (ttyn, S_IRUSR | S_IWUSR | S_IWGRP) < 0) {
	FUNC37("chmod %s", ttyn);
	if (rootlogin == 0)
	    FUNC13 (1);
    }

#ifdef HAVE_SETLOGIN
    if(setlogin(pwd->pw_name)){
	warn("setlogin(%s)", pwd->pw_name);
	if(rootlogin == 0)
	    exit(1);
    }
#endif
    if(rootlogin == 0) {
	const char *file = FUNC24("limits");
	if(file == NULL)
	    file = _PATH_LIMITS_CONF;

	FUNC27(file, pwd);
    }

#ifdef HAVE_SETPCRED
    if (setpcred (pwd->pw_name, NULL) == -1)
	warn("setpcred(%s)", pwd->pw_name);
#endif /* HAVE_SETPCRED */
#ifdef HAVE_INITGROUPS
    if(initgroups(pwd->pw_name, pwd->pw_gid)){
	warn("initgroups(%s, %u)", pwd->pw_name, (unsigned)pwd->pw_gid);
	if(rootlogin == 0)
	    exit(1);
    }
#endif
    if(FUNC9(pwd->pw_uid))
	FUNC13(1);
    if(FUNC28(pwd->pw_gid)){
	FUNC37("setgid(%u)", (unsigned)pwd->pw_gid);
	if(rootlogin == 0)
	    FUNC13(1);
    }
    if(FUNC31(pwd->pw_uid) || (pwd->pw_uid != 0 && FUNC31(0) == 0)) {
	FUNC37("setuid(%u)", (unsigned)pwd->pw_uid);
	if(rootlogin == 0)
	    FUNC13(1);
    }

    /* make sure signals are set to default actions, apparently some
       OS:es like to ignore SIGINT, which is not very convenient */

    for (i = 1; i < NSIG; ++i)
	FUNC34(i, SIG_DFL);

    /* all kinds of different magic */

#ifdef HAVE_GETSPNAM
    check_shadow(pwd, sp);
#endif

#if defined(HAVE_GETUDBNAM) && defined(HAVE_SETLIM)
    {
	struct udb *udb;
	long t;
	const long maxcpu = 46116860184; /* some random constant */
	udb = getudbnam(pwd->pw_name);
	if(udb == UDB_NULL)
	    errx(1, "Failed to get UDB entry.");
	t = udb->ue_pcpulim[UDBRC_INTER];
	if(t == 0 || t > maxcpu)
	    t = CPUUNLIM;
	else
	    t *= 100 * CLOCKS_PER_SEC;

	if(limit(C_PROC, 0, L_CPU, t) < 0)
	    warn("limit C_PROC");

	t = udb->ue_jcpulim[UDBRC_INTER];
	if(t == 0 || t > maxcpu)
	    t = CPUUNLIM;
	else
	    t *= 100 * CLOCKS_PER_SEC;

	if(limit(C_JOBPROCS, 0, L_CPU, t) < 0)
	    warn("limit C_JOBPROCS");

	nice(udb->ue_nice[UDBRC_INTER]);
    }
#endif
#if defined(HAVE_SGI_GETCAPABILITYBYNAME) && defined(HAVE_CAP_SET_PROC)
	/* XXX SGI capability hack IRIX 6.x (x >= 0?) has something
	   called capabilities, that allow you to give away
	   permissions (such as chown) to specific processes. From 6.5
	   this is default on, and the default capability set seems to
	   not always be the empty set. The problem is that the
	   runtime linker refuses to do just about anything if the
	   process has *any* capabilities set, so we have to remove
	   them here (unless otherwise instructed by /etc/capability).
	   In IRIX < 6.5, these functions was called sgi_cap_setproc,
	   etc, but we ignore this fact (it works anyway). */
	{
	    struct user_cap *ucap = sgi_getcapabilitybyname(pwd->pw_name);
	    cap_t cap;
	    if(ucap == NULL)
		cap = cap_from_text("all=");
	    else
		cap = cap_from_text(ucap->ca_default);
	    if(cap == NULL)
		err(1, "cap_from_text");
	    if(cap_set_proc(cap) < 0)
		err(1, "cap_set_proc");
	    cap_free(cap);
	    free(ucap);
	}
#endif
    home_dir = pwd->pw_dir;
    if (FUNC4(home_dir) < 0) {
	FUNC14(stderr, "No home directory \"%s\"!\n", pwd->pw_dir);
	if (FUNC4("/"))
	    FUNC13(0);
	home_dir = "/";
	FUNC14(stderr, "Logging in with home = \"/\".\n");
    }
#ifdef KRB5
    if (auth == AUTH_KRB5) {
	krb5_start_session (pwd);
    }

    krb5_get_afs_tokens (pwd);

    krb5_finish ();
#endif /* KRB5 */

    FUNC0("PATH", _PATH_DEFPATH);

    {
	const char *str = FUNC24("environment");
	char buf[MAXPATHLEN];

	if(str == NULL) {
	    FUNC25(_PATH_ETC_ENVIRONMENT);
	} else {
	    while(FUNC35(&str, ",", buf, sizeof(buf)) != -1) {
		if(buf[0] == '\0')
		    continue;
		FUNC25(buf);
	    }
	}
    }
    {
	const char *str = FUNC24("motd");
	char buf[MAXPATHLEN];

	if(str != NULL) {
	    while(FUNC35(&str, ",", buf, sizeof(buf)) != -1) {
		if(buf[0] == '\0')
		    continue;
		FUNC33(buf);
	    }
	} else {
	    str = FUNC24("welcome");
	    if(str != NULL)
		FUNC33(str);
	}
    }
    FUNC0("HOME", home_dir);
    FUNC0("USER", pwd->pw_name);
    FUNC0("LOGNAME", pwd->pw_name);
    FUNC0("SHELL", pwd->pw_shell);
    FUNC12(pwd->pw_shell, rootlogin);
}