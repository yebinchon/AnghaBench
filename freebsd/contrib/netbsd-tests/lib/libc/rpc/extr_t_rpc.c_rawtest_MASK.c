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
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  int /*<<< orphan*/  SVCXPRT ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  PLUSONE ; 
 int /*<<< orphan*/  PROGNUM ; 
 int RPC_SUCCESS ; 
 int /*<<< orphan*/  VERSNUM ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tout ; 
 scalar_t__ xdr_int ; 

__attribute__((used)) static int
FUNC11(const char *arg)
{
	CLIENT         *clnt;
	SVCXPRT        *svc;
	int 		num, resp;
	enum clnt_stat  rv;

	if (arg)
		num = FUNC2(arg);
	else
		num = 0;

	svc = FUNC9();
	if (svc == NULL)
		FUNC1(EXIT_FAILURE, "Cannot create server %d", num);
	if (!FUNC10(svc, PROGNUM, VERSNUM, server, NULL))
		FUNC1(EXIT_FAILURE, "Cannot register server %d", num);

	clnt = FUNC5(PROGNUM, VERSNUM);
	if (clnt == NULL)
		FUNC1(EXIT_FAILURE, "%s",
		    FUNC6("clnt_raw_create"));
	rv = FUNC3(clnt, PLUSONE, (xdrproc_t)xdr_int, (void *)&num,
	    (xdrproc_t)xdr_int, (void *)&resp, tout);
	if (rv != RPC_SUCCESS)
		FUNC1(EXIT_FAILURE, "clnt_call: %s", FUNC7(rv));
	FUNC0("Got %d\n", resp);
	FUNC4(clnt);
	FUNC8(svc);
	if (++num != resp)
		FUNC1(EXIT_FAILURE, "expected %d got %d", num, resp);

	return EXIT_SUCCESS;
}