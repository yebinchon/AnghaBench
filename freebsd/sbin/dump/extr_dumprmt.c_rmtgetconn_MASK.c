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
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  throughput ;
struct servent {scalar_t__ s_port; } ;
struct passwd {char* pw_name; } ;
typedef  int /*<<< orphan*/  size ;
typedef  int /*<<< orphan*/  on ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int IPTOS_THROUGHPUT ; 
 int /*<<< orphan*/  IP_TOS ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_SNDBUF ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int TP_BSIZE ; 
 int /*<<< orphan*/  X_STARTUP ; 
 char* _PATH_RMT ; 
 int /*<<< orphan*/  errfd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (char*) ; 
 struct passwd* FUNC3 (int /*<<< orphan*/ ) ; 
 struct servent* FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int ntrec ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char**,int /*<<< orphan*/ ,char*,char*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ rmtape ; 
 char* rmtpeer ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC11 (char*,char) ; 

void
FUNC12(void)
{
	char *cp;
	const char *rmt;
	static struct servent *sp = NULL;
	static struct passwd *pwd = NULL;
	char *tuser;
	int size;
	int throughput;
	int on;

	if (sp == NULL) {
		sp = FUNC4("shell", "tcp");
		if (sp == NULL) {
			FUNC6("shell/tcp: unknown service\n");
			FUNC0(X_STARTUP);
		}
		pwd = FUNC3(FUNC5());
		if (pwd == NULL) {
			FUNC6("who are you?\n");
			FUNC0(X_STARTUP);
		}
	}
	if ((cp = FUNC11(rmtpeer, '@')) != NULL) {
		tuser = rmtpeer;
		*cp = '\0';
		if (!FUNC7(tuser))
			FUNC0(X_STARTUP);
		rmtpeer = ++cp;
	} else
		tuser = pwd->pw_name;
	if ((rmt = FUNC2("RMT")) == NULL)
		rmt = _PATH_RMT;
	FUNC6("%s", "");
	rmtape = FUNC9(&rmtpeer, (u_short)sp->s_port, pwd->pw_name,
		      tuser, rmt, &errfd);
	if (rmtape < 0) {
		FUNC6("login to %s as %s failed.\n", rmtpeer, tuser);
		return;
	}
	(void)FUNC1(stderr, "Connection to %s established.\n", rmtpeer);
	size = ntrec * TP_BSIZE;
	if (size > 60 * 1024)		/* XXX */
		size = 60 * 1024;
	/* Leave some space for rmt request/response protocol */
	size += 2 * 1024;
	while (size > TP_BSIZE &&
	    FUNC10(rmtape, SOL_SOCKET, SO_SNDBUF, &size, sizeof (size)) < 0)
		    size -= TP_BSIZE;
	(void)FUNC10(rmtape, SOL_SOCKET, SO_RCVBUF, &size, sizeof (size));
	throughput = IPTOS_THROUGHPUT;
	if (FUNC10(rmtape, IPPROTO_IP, IP_TOS,
	    &throughput, sizeof(throughput)) < 0)
		FUNC8("IP_TOS:IPTOS_THROUGHPUT setsockopt");
	on = 1;
	if (FUNC10(rmtape, IPPROTO_TCP, TCP_NODELAY, &on, sizeof (on)) < 0)
		FUNC8("TCP_NODELAY setsockopt");
}