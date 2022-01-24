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
struct evrpc_request_wrapper {int dummy; } ;
struct evrpc_pool {int dummy; } ;
typedef  struct evrpc_pool evrpc_base ;
struct evhttp {int dummy; } ;
typedef  int /*<<< orphan*/  ev_uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVRPC_INPUT ; 
 struct evrpc_request_wrapper* FUNC0 (int /*<<< orphan*/ ,struct msg*,struct kill*,struct evrpc_pool*,struct msg*,struct kill*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct evrpc_pool*,struct msg*,struct kill*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVRPC_OUTPUT ; 
 int /*<<< orphan*/  FUNC2 (struct msg*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GotKillCb ; 
 int /*<<< orphan*/  Message ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp*) ; 
 int /*<<< orphan*/ * FUNC6 (struct evrpc_pool*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct evrpc_request_wrapper*) ; 
 int /*<<< orphan*/  FUNC8 (struct evrpc_pool*) ; 
 int /*<<< orphan*/  from_name ; 
 int /*<<< orphan*/  FUNC9 (struct kill*) ; 
 int /*<<< orphan*/  FUNC10 (struct kill*) ; 
 struct kill* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct msg*) ; 
 struct msg* FUNC13 () ; 
 int need_input_hook ; 
 int need_output_hook ; 
 int /*<<< orphan*/  rpc_hook_add_header ; 
 int /*<<< orphan*/  rpc_hook_add_meta ; 
 int /*<<< orphan*/  rpc_hook_remove_header ; 
 struct evrpc_pool* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct evhttp**,int /*<<< orphan*/ *,struct evrpc_pool**) ; 
 int /*<<< orphan*/  FUNC16 (struct evrpc_pool*) ; 
 int test_ok ; 
 int /*<<< orphan*/  to_name ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

__attribute__((used)) static void
FUNC18(void)
{
	ev_uint16_t port;
	struct evhttp *http = NULL;
	struct evrpc_base *base = NULL;
	struct evrpc_pool *pool = NULL;
	struct msg *msg = NULL;
	struct kill *kill = NULL;

	FUNC15(&http, &port, &base);

	need_input_hook = 1;
	need_output_hook = 1;

	FUNC3(FUNC6(base, EVRPC_INPUT, rpc_hook_add_header, (void*)"input")
	    != NULL);
	FUNC3(FUNC6(base, EVRPC_OUTPUT, rpc_hook_add_header, (void*)"output")
	    != NULL);

	pool = FUNC14(port);
	FUNC17(pool);

	FUNC3(FUNC6(pool, EVRPC_OUTPUT, rpc_hook_add_meta, NULL));
	FUNC3(FUNC6(pool, EVRPC_INPUT, rpc_hook_remove_header, (void*)"output"));

	/* set up the basic message */
	msg = FUNC13();
	FUNC17(msg);
	FUNC2(msg, from_name, "niels");
	FUNC2(msg, to_name, "tester");

	kill = FUNC11();

	FUNC1(Message, pool, msg, kill,  GotKillCb, NULL);

	test_ok = 0;

	FUNC4();

	FUNC17(test_ok == 1);

	/* we do it twice to make sure that reuse works correctly */
	FUNC9(kill);

	FUNC1(Message, pool, msg, kill,  GotKillCb, NULL);

	FUNC4();

	FUNC17(test_ok == 2);

	/* we do it trice to make sure other stuff works, too */
	FUNC9(kill);

	{
		struct evrpc_request_wrapper *ctx =
		    FUNC0(Message, msg, kill,
			pool, msg, kill, GotKillCb, NULL);
		FUNC7(ctx);
	}

	FUNC4();

	FUNC16(base);

	FUNC17(test_ok == 3);

end:
	if (msg)
		FUNC12(msg);
	if (kill)
		FUNC10(kill);

	if (pool)
		FUNC8(pool);
	if (http)
		FUNC5(http);

	need_input_hook = 0;
	need_output_hook = 0;
}