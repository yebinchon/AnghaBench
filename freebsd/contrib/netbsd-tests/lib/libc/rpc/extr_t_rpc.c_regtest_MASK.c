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
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  DESTROY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  PLUSONE ; 
 int /*<<< orphan*/  PROGNUM ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  SVC_FDSET_POLL ; 
 int /*<<< orphan*/  VERSNUM ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  tout ; 
 scalar_t__ xdr_int ; 
 scalar_t__ xdr_void ; 

__attribute__((used)) static int
FUNC15(const char *hostname, const char *transp, const char *arg, int p)
{
	CLIENT         *clnt;
	int 		num, resp;
	enum clnt_stat  rv;
	pid_t		pid;

	if (arg)
		num = FUNC3(arg);
	else
		num = 0;

#ifdef __NetBSD__
	svc_fdset_init(p ? SVC_FDSET_POLL : 0);
#endif
	if (!FUNC12(server, PROGNUM, VERSNUM, transp))
	{
		FUNC2(EXIT_FAILURE, "Cannot create server %d", num);
	}

	switch ((pid = FUNC9())) {
	case 0:
		FUNC0("Calling svc_run\n");
		FUNC14();
		FUNC1(EXIT_FAILURE, "svc_run returned %d!", num);
	case -1:
		FUNC1(EXIT_FAILURE, "Fork failed (%s)", FUNC11(errno));
	default:
		FUNC10(1);
		break;
	}

	FUNC0("Initializing client\n");
	clnt = FUNC5(hostname, PROGNUM, VERSNUM, transp);
	if (clnt == NULL)
		FUNC1(EXIT_FAILURE, "%s",
		    FUNC7("clnt_raw_create"));
	rv = FUNC4(clnt, PLUSONE, (xdrproc_t)xdr_int, (void *)&num,
	    (xdrproc_t)xdr_int, (void *)&resp, tout);
	if (rv != RPC_SUCCESS)
		FUNC1(EXIT_FAILURE, "clnt_call: %s", FUNC8(rv));
	FUNC0("Got %d\n", resp);
	if (++num != resp)
		FUNC1(EXIT_FAILURE, "expected %d got %d", num, resp);
	rv = FUNC4(clnt, DESTROY, (xdrproc_t)xdr_void, NULL,
	    (xdrproc_t)xdr_void, NULL, tout);
	if (rv != RPC_SUCCESS)
		FUNC1(EXIT_FAILURE, "clnt_call: %s", FUNC8(rv));
	FUNC6(clnt);

	return EXIT_SUCCESS;
}