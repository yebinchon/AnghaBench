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
typedef  int /*<<< orphan*/  username ;
typedef  scalar_t__ time_t ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct passwd {char* pw_name; } ;
struct logininfo {char* progname; char* hostname; int /*<<< orphan*/  line; } ;
struct in_addr {int dummy; } ;
struct hostent {int /*<<< orphan*/ ** h_addr_list; } ;
typedef  int /*<<< orphan*/  stripline ;
typedef  int /*<<< orphan*/  sa_in4 ;
typedef  int /*<<< orphan*/  s_t2 ;
typedef  int /*<<< orphan*/  s_t1 ;
typedef  int /*<<< orphan*/  s_t0 ;
typedef  int /*<<< orphan*/  s_logouttime ;
typedef  int /*<<< orphan*/  s_logintime ;
typedef  int /*<<< orphan*/  cmdstring ;

/* Variables and functions */
 int PAUSE_BEFORE_LOGOUT ; 
 scalar_t__ be_verbose ; 
 char* FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct logininfo*,char*) ; 
 scalar_t__ FUNC2 () ; 
 struct hostent* FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 
 struct passwd* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 struct logininfo* FUNC8 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct logininfo*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct logininfo*) ; 
 int /*<<< orphan*/  FUNC12 (struct logininfo*) ; 
 int /*<<< orphan*/  FUNC13 (struct logininfo*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct logininfo*) ; 
 int /*<<< orphan*/  FUNC15 (void*,void*,int) ; 
 scalar_t__ nologtest ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 

int
FUNC23()
{
	struct logininfo *li1;
	struct passwd *pw;
	struct hostent *he;
	struct sockaddr_in sa_in4;
	char cmdstring[256], stripline[8];
	char username[32];
#ifdef HAVE_TIME_H
	time_t t0, t1, t2, logintime, logouttime;
	char s_t0[64],s_t1[64],s_t2[64];
	char s_logintime[64], s_logouttime[64]; /* ctime() strings */
#endif

	FUNC16("**\n** Testing the API...\n**\n");

	pw = FUNC5(FUNC6());
	FUNC19(username, pw->pw_name, sizeof(username));

	/* gethostname(hostname, sizeof(hostname)); */

	FUNC16("login_alloc_entry test (no host info):\n");

	/* FIXME fake tty more effectively - this could upset some platforms */
	li1 = FUNC8((int)FUNC4(), username, NULL, FUNC22(0));
	FUNC19(li1->progname, "OpenSSH-logintest", sizeof(li1->progname));

	if (be_verbose)
		FUNC1(li1, "li1");

	FUNC16("Setting host address info for 'localhost' (may call out):\n");
	if (! (he = FUNC3("localhost"))) {
		FUNC16("Couldn't set hostname(lookup failed)\n");
	} else {
		/* NOTE: this is messy, but typically a program wouldn't have to set
		 *  any of this, a sockaddr_in* would be already prepared */
		FUNC15((void *)&(sa_in4.sin_addr), (void *)&(he->h_addr_list[0][0]),
		       sizeof(struct in_addr));
		FUNC13(li1, (struct sockaddr *) &sa_in4, sizeof(sa_in4));
		FUNC19(li1->hostname, "localhost", sizeof(li1->hostname));
	}
	if (be_verbose)
		FUNC1(li1, "li1");

	if ((int)FUNC2() != 0) {
		FUNC16("NOT RUNNING LOGIN TESTS - you are not root!\n");
		return 1;
	}

	if (nologtest)
		return 1;

	FUNC7(stripline, li1->line, sizeof(stripline));

	FUNC16("Performing an invalid login attempt (no type field)\n--\n");
	FUNC14(li1);
	FUNC16("--\n(Should have written errors to stderr)\n");

#ifdef HAVE_TIME_H
	(void)time(&t0);
	strlcpy(s_t0, ctime(&t0), sizeof(s_t0));
	t1 = login_get_lastlog_time(getuid());
	strlcpy(s_t1, ctime(&t1), sizeof(s_t1));
	printf("Before logging in:\n\tcurrent time is %d - %s\t"
	       "lastlog time is %d - %s\n",
	       (int)t0, s_t0, (int)t1, s_t1);
#endif

	FUNC16("Performing a login on line %s ", stripline);
#ifdef HAVE_TIME_H
	(void)time(&logintime);
	strlcpy(s_logintime, ctime(&logintime), sizeof(s_logintime));
	printf("at %d - %s", (int)logintime, s_logintime);
#endif
	FUNC16("--\n");
	FUNC11(li1);

	FUNC18(cmdstring, sizeof(cmdstring), "who | grep '%s '",
		 stripline);
	FUNC20(cmdstring);

	FUNC16("--\nPausing for %d second(s)...\n", PAUSE_BEFORE_LOGOUT);
	FUNC17(PAUSE_BEFORE_LOGOUT);

	FUNC16("Performing a logout ");
#ifdef HAVE_TIME_H
	(void)time(&logouttime);
	strlcpy(s_logouttime, ctime(&logouttime), sizeof(s_logouttime));
	printf("at %d - %s", (int)logouttime, s_logouttime);
#endif
	FUNC16("\nThe root login shown above should be gone.\n"
	       "If the root login hasn't gone, but another user on the same\n"
	       "pty has, this is OK - we're hacking it here, and there\n"
	       "shouldn't be two users on one pty in reality...\n"
	       "-- ('who' output follows)\n");
	FUNC12(li1);

	FUNC20(cmdstring);
	FUNC16("-- ('who' output ends)\n");

#ifdef HAVE_TIME_H
	t2 = login_get_lastlog_time(getuid());
	strlcpy(s_t2, ctime(&t2), sizeof(s_t2));
	printf("After logging in, lastlog time is %d - %s\n", (int)t2, s_t2);
	if (t1 == t2)
		printf("The lastlog times before and after logging in are the "
		       "same.\nThis indicates that lastlog is ** NOT WORKING "
		       "CORRECTLY **\n");
	else if (t0 != t2)
		/* We can be off by a second or so, even when recording works fine.
		 * I'm not 100% sure why, but it's true. */
		printf("** The login time and the lastlog time differ.\n"
		       "** This indicates that lastlog is either recording the "
		       "wrong time,\n** or retrieving the wrong entry.\n"
		       "If it's off by less than %d second(s) "
		       "run the test again.\n", PAUSE_BEFORE_LOGOUT);
	else
		printf("lastlog agrees with the login time. This is a good thing.\n");

#endif

	FUNC16("--\nThe output of 'last' shown next should have "
	       "an entry for root \n  on %s for the time shown above:\n--\n",
	       stripline);
	FUNC18(cmdstring, sizeof(cmdstring), "last | grep '%s ' | head -3",
		 stripline);
	FUNC20(cmdstring);

	FUNC16("--\nEnd of login test.\n");

	FUNC9(li1);

	return 1;
}