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
struct msg {int dummy; } ;
struct kill {int dummy; } ;
struct evrpc_pool {int dummy; } ;
struct evrpc_base {int dummy; } ;
struct evhttp {int dummy; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct evrpc_pool*,struct msg*,struct kill*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msg*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GotErrorCb ; 
 int /*<<< orphan*/  NeverReply ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp*) ; 
 int /*<<< orphan*/  FUNC5 (struct evrpc_pool*) ; 
 int /*<<< orphan*/  FUNC6 (struct evrpc_pool*,int) ; 
 int /*<<< orphan*/  from_name ; 
 int /*<<< orphan*/  FUNC7 (struct kill*) ; 
 struct kill* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct msg*) ; 
 struct msg* FUNC10 () ; 
 struct evrpc_pool* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct evhttp**,int /*<<< orphan*/ *,struct evrpc_base**) ; 
 int /*<<< orphan*/  FUNC13 (struct evrpc_base*) ; 
 int /*<<< orphan*/  saved_rpc ; 
 int test_ok ; 
 int /*<<< orphan*/  to_name ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void
FUNC15(void)
{
	ev_uint16_t port;
	struct evhttp *http = NULL;
	struct evrpc_base *base = NULL;
	struct evrpc_pool *pool = NULL;
	struct msg *msg = NULL;
	struct kill *kill = NULL;

	FUNC12(&http, &port, &base);

	pool = FUNC11(port);
	FUNC14(pool);

	/* set the timeout to 1 second. */
	FUNC6(pool, 1);

	/* set up the basic message */
	msg = FUNC10();
	FUNC14(msg);
	FUNC2(msg, from_name, "niels");
	FUNC2(msg, to_name, "tester");

	kill = FUNC8();

	FUNC0(NeverReply, pool, msg, kill, GotErrorCb, NULL);

	test_ok = 0;

	FUNC3();

	/* free the saved RPC structure up */
	FUNC1(saved_rpc);

	FUNC13(base);

	FUNC14(test_ok == 2);

end:
	if (msg)
		FUNC9(msg);
	if (kill)
		FUNC7(kill);

	if (pool)
		FUNC5(pool);
	if (http)
		FUNC4(http);
}