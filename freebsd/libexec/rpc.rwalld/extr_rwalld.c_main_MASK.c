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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct passwd {int /*<<< orphan*/  pw_uid; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 int LOG_CONS ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int LOG_PID ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  WALLPROG ; 
 int /*<<< orphan*/  WALLVERS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ from_inetd ; 
 scalar_t__ FUNC1 () ; 
 struct passwd* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  killkids ; 
 int nodaemon ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  wallprog_1 ; 

int
FUNC17(int argc, char *argv[])
{
	SVCXPRT *transp;
	socklen_t salen;
	int ok;
	struct sockaddr_storage sa;

	if (argc == 2 && !FUNC10(argv[1], "-n"))
		nodaemon = 1;
	if (argc != 1 && !nodaemon)
		FUNC16();

	if (FUNC1() == 0) {
		struct passwd *pep = FUNC2("nobody");
		if (pep)
			FUNC8(pep->pw_uid);
		else
			FUNC8(FUNC4());
	}

        /*
         * See if inetd started us
         */
	salen = sizeof(sa);
        if (FUNC3(0, (struct sockaddr *)&sa, &salen) < 0) {
                from_inetd = 0;
        }

        if (!from_inetd) {
                if (!nodaemon)
                        FUNC6();

		(void)FUNC7(WALLPROG, WALLVERS, NULL);
        }

	(void)FUNC9(SIGCHLD, killkids);

	FUNC5("rpc.rwalld", LOG_CONS|LOG_PID, LOG_DAEMON);

	/* create and register the service */
	if (from_inetd) {
		transp = FUNC14(0, NULL, NULL, 0, 0);
		if (transp == NULL) {
			FUNC15(LOG_ERR, "couldn't create udp service.");
			FUNC0(1);
		}
		ok = FUNC12(transp, WALLPROG, WALLVERS,
			     wallprog_1, NULL);
	} else
		ok = FUNC11(wallprog_1,
				WALLPROG, WALLVERS, "udp");
	if (!ok) {
		FUNC15(LOG_ERR, "unable to register (WALLPROG, WALLVERS, %s)", (!from_inetd)?"udp":"(inetd)");
		FUNC0(1);
	}
	FUNC13();
	FUNC15(LOG_ERR, "svc_run returned");
	FUNC0(1);
}