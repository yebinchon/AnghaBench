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
struct spwd {char* sp_pwdp; } ;
struct passwd {char* pw_name; char* pw_passwd; } ;
struct authorization {char* a_password; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ EINTR ; 
 scalar_t__ GettingInput ; 
 int /*<<< orphan*/  KA_USERAUTH_VERSION ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * STRNULL ; 
 int /*<<< orphan*/  STRafsuser ; 
 char* FUNC5 (struct passwd*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  euid ; 
 struct authorization* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*) ; 
 struct spwd* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ just_signaled ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ) ; 
 char* FUNC18 (char*) ; 
 struct passwd* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (char) ; 

__attribute__((used)) static void
FUNC22(void)
{
#ifndef NO_CRYPT

    int i;
    char *srpp = NULL;
    struct passwd *pw;

#undef XCRYPT

#if defined(HAVE_AUTH_H) && defined(HAVE_GETAUTHUID)

    struct authorization *apw;
    extern char *crypt16 (const char *, const char *);

# define XCRYPT(pw, a, b) crypt16(a, b)

    if ((pw = xgetpwuid(euid)) != NULL &&	/* effective user passwd  */
        (apw = getauthuid(euid)) != NULL) 	/* enhanced ultrix passwd */
	srpp = apw->a_password;

#elif defined(HAVE_SHADOW_H)

    struct spwd *spw;

# define XCRYPT(pw, a, b) crypt(a, b)

    if ((pw = xgetpwuid(euid)) != NULL)	{	/* effective user passwd  */
	errno = 0;
	while ((spw = getspnam(pw->pw_name)) == NULL && errno == EINTR) {
	    handle_pending_signals();
	    errno = 0;
	}
	if (spw != NULL)			 /* shadowed passwd	  */
	    srpp = spw->sp_pwdp;
    }

#else


#ifdef __CYGWIN__
# define XCRYPT(pw, a, b) cygwin_xcrypt(pw, a, b)
#else
# define XCRYPT(pw, a, b) crypt(a, b)
#endif

#if !defined(__MVS__)
    if ((pw = FUNC19(euid)) != NULL)	/* effective user passwd  */
	srpp = pw->pw_passwd;
#endif /* !MVS */

#endif

    if (srpp == NULL) {
	FUNC6();
	/*NOTREACHED*/
	return;
    }

    FUNC13(0);		/* Not for locking any more */
    FUNC21('\n');
    for (i = 0; i < 5; i++) {
	const char *crpp;
	char *pp;
#ifdef AFS
	char *afsname;
	Char *safs;

	if ((safs = varval(STRafsuser)) != STRNULL)
	    afsname = short2str(safs);
	else
	    if ((afsname = getenv("AFSUSER")) == NULL)
	        afsname = pw->pw_name;
#endif
	pp = FUNC18("Password:");

	crpp = XCRYPT(pw, pp, srpp);
	if ((crpp && FUNC15(crpp, srpp) == 0)
#ifdef AFS
	    || (ka_UserAuthenticateGeneral(KA_USERAUTH_VERSION,
					   afsname,     /* name */
					   NULL,        /* instance */
					   NULL,        /* realm */
					   pp,          /* password */
					   0,           /* lifetime */
					   0, 0,         /* spare */
					   NULL)        /* reason */
	    == 0)
#endif /* AFS */
	    ) {
	    (void) FUNC12(pp, 0, FUNC16(pp));
	    if (GettingInput && !just_signaled) {
		(void) FUNC3();
		FUNC2();
		FUNC1();
		FUNC4();
	    }
	    just_signaled = 0;
	    return;
	}
	FUNC20(FUNC0(22, 2, "\nIncorrect passwd for %s\n"), pw->pw_name);
    }
#endif /* NO_CRYPT */
    FUNC6();
}