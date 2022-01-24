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
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  from ;
typedef  int /*<<< orphan*/  SVCXPRT ;

/* Variables and functions */
 int LOG_CONS ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int LOG_PID ; 
 int /*<<< orphan*/  RSTATPROG ; 
 int /*<<< orphan*/  RSTATVERS_ORIG ; 
 int /*<<< orphan*/  RSTATVERS_SWTCH ; 
 int /*<<< orphan*/  RSTATVERS_TIME ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  cleanup ; 
 int closedown ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ from_inetd ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rstat_service ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC12(int argc, char *argv[])
{
	SVCXPRT *transp;
	int ok;
	struct sockaddr_storage from;
	socklen_t fromlen;

        if (argc == 2)
                closedown = FUNC0(argv[1]);
        if (closedown <= 0)
                closedown = 20;

        /*
         * See if inetd started us
         */
	fromlen = sizeof(from);
        if (FUNC3(0, (struct sockaddr *)&from, &fromlen) < 0) {
                from_inetd = 0;
        }

        if (!from_inetd) {
                FUNC1(0, 0);

                (void)FUNC5(RSTATPROG, RSTATVERS_TIME, NULL);
                (void)FUNC5(RSTATPROG, RSTATVERS_SWTCH, NULL);
                (void)FUNC5(RSTATPROG, RSTATVERS_ORIG, NULL);

		(void) FUNC6(SIGINT, cleanup);
		(void) FUNC6(SIGTERM, cleanup);
		(void) FUNC6(SIGHUP, cleanup);
        }

        FUNC4("rpc.rstatd", LOG_CONS|LOG_PID, LOG_DAEMON);

	if (from_inetd) {
		transp = FUNC10(0, NULL, NULL, 0, 0);
		if (transp == NULL) {
			FUNC11(LOG_ERR, "cannot create udp service.");
			FUNC2(1);
		}
		ok = FUNC8(transp, RSTATPROG, RSTATVERS_TIME,
			     rstat_service, NULL);
	} else
		ok = FUNC7(rstat_service,
				RSTATPROG, RSTATVERS_TIME, "udp");
	if (!ok) {
		FUNC11(LOG_ERR, "unable to register (RSTATPROG, RSTATVERS_TIME, %s)", (!from_inetd)?"udp":"(inetd)");
  		FUNC2(1);
	}
	if (from_inetd)
		ok = FUNC8(transp, RSTATPROG, RSTATVERS_SWTCH,
			     rstat_service, NULL);
	else
		ok = FUNC7(rstat_service,
				RSTATPROG, RSTATVERS_SWTCH, "udp");
	if (!ok) {
		FUNC11(LOG_ERR, "unable to register (RSTATPROG, RSTATVERS_SWTCH, %s)", (!from_inetd)?"udp":"(inetd)");
  		FUNC2(1);
	}
	if (from_inetd)
		ok = FUNC8(transp, RSTATPROG, RSTATVERS_ORIG,
			     rstat_service, NULL);
	else
		ok = FUNC7(rstat_service,
				RSTATPROG, RSTATVERS_ORIG, "udp");
	if (!ok) {
		FUNC11(LOG_ERR, "unable to register (RSTATPROG, RSTATVERS_ORIG, %s)", (!from_inetd)?"udp":"(inetd)");
  		FUNC2(1);
	}

        FUNC9();
	FUNC11(LOG_ERR, "svc_run returned");
	FUNC2(1);
}