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
 int EXT_RQUOTAVERS ; 
 int LOG_CONS ; 
 int /*<<< orphan*/  LOG_DAEMON ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int LOG_PID ; 
 int /*<<< orphan*/  RQUOTAPROG ; 
 int RQUOTAVERS ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  cleanup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ from_inetd ; 
 int FUNC2 (int,char**,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rquota_service_1 ; 
 int /*<<< orphan*/  rquota_service_2 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC12(int argc, char **argv)
{
	SVCXPRT *transp;
	int ok;
	struct sockaddr_storage from;
	socklen_t fromlen;
	int vers;
	int ch;

	while ((ch = FUNC2(argc, argv, "d")) != -1) {
		switch (ch) {
		case 'd':
			debug++;
			break;
		default:
			break;
		}
	}

	fromlen = sizeof(from);
	if (FUNC3(0, (struct sockaddr *)&from, &fromlen) < 0)
		from_inetd = 0;

	if (!from_inetd) {
		if (!debug)
			FUNC0(0, 0);
		(void)FUNC5(RQUOTAPROG, RQUOTAVERS, NULL);
		(void)FUNC6(SIGINT, cleanup);
		(void)FUNC6(SIGTERM, cleanup);
		(void)FUNC6(SIGHUP, cleanup);
	}

	FUNC4("rpc.rquotad", LOG_CONS|LOG_PID, LOG_DAEMON);

	/* create and register the service */
	if (from_inetd) {
		transp = FUNC10(0, NULL, NULL, 0, 0);
		if (transp == NULL) {
			FUNC11(LOG_ERR, "couldn't create udp service.");
			FUNC1(1);
		}
		vers = RQUOTAVERS;
		ok = FUNC8(transp, RQUOTAPROG, RQUOTAVERS,
		    rquota_service_1, NULL);
		if (ok) {
			vers = EXT_RQUOTAVERS;
			ok = FUNC8(transp, RQUOTAPROG, EXT_RQUOTAVERS,
				     rquota_service_2, NULL);
		}
	} else {
		vers = RQUOTAVERS;
		ok = FUNC7(rquota_service_1,
		    RQUOTAPROG, RQUOTAVERS, "udp");
		if (ok) {
			vers = EXT_RQUOTAVERS;
			ok = FUNC7(rquota_service_2,
					RQUOTAPROG, EXT_RQUOTAVERS, "udp");

		}
	}
	if (!ok) {
		FUNC11(LOG_ERR,
		    "unable to register (RQUOTAPROG, %s, %s)",
		       vers == RQUOTAVERS ? "RQUOTAVERS" : "EXT_RQUOTAVERS",
		       from_inetd ? "(inetd)" : "udp");
		FUNC1(1);
	}

	FUNC9();
	FUNC11(LOG_ERR, "svc_run returned");
	FUNC1(1);
}