#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_10__ {int /*<<< orphan*/  ai_dst_addr; int /*<<< orphan*/  ai_src_addr; int /*<<< orphan*/  ai_connect_len; int /*<<< orphan*/  ai_connect; } ;
struct TYPE_9__ {int responder_resources; int initiator_depth; int /*<<< orphan*/  private_data_len; int /*<<< orphan*/  private_data; void* retry_count; } ;
struct TYPE_8__ {int error; int /*<<< orphan*/  id; void* retries; } ;

/* Variables and functions */
 size_t STEP_BIND ; 
 size_t STEP_CONNECT ; 
 size_t STEP_CREATE_QP ; 
 size_t STEP_DISCONNECT ; 
 size_t STEP_RESOLVE_ADDR ; 
 size_t STEP_RESOLVE_ROUTE ; 
 scalar_t__* completed ; 
 TYPE_2__ conn_param ; 
 int connections ; 
 int /*<<< orphan*/  dst_addr ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  hints ; 
 int /*<<< orphan*/  init_qp_attr ; 
 TYPE_1__* nodes ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  process_events ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* rai ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* retries ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ src_addr ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (size_t) ; 
 scalar_t__* started ; 
 int /*<<< orphan*/  timeout ; 

__attribute__((used)) static int FUNC16(void)
{
	pthread_t event_thread;
	int i, ret;

	ret = FUNC3(src_addr, dst_addr, port, &hints, &rai);
	if (ret) {
		FUNC5("getaddrinfo error: %s\n", FUNC2(ret));
		return ret;
	}

	conn_param.responder_resources = 1;
	conn_param.initiator_depth = 1;
	conn_param.retry_count = retries;
	conn_param.private_data = rai->ai_connect;
	conn_param.private_data_len = rai->ai_connect_len;

	ret = FUNC6(&event_thread, NULL, process_events, NULL);
	if (ret) {
		FUNC4("failure creating event thread");
		return ret;
	}

	if (src_addr) {
		FUNC5("binding source address\n");
		FUNC15(STEP_BIND);
		for (i = 0; i < connections; i++) {
			FUNC14(&nodes[i], STEP_BIND);
			ret = FUNC7(nodes[i].id, rai->ai_src_addr);
			if (ret) {
				FUNC4("failure bind addr");
				nodes[i].error = 1;
				continue;
			}
			FUNC0(&nodes[i], STEP_BIND);
		}
		FUNC1(STEP_BIND);
	}

	FUNC5("resolving address\n");
	FUNC15(STEP_RESOLVE_ADDR);
	for (i = 0; i < connections; i++) {
		if (nodes[i].error)
			continue;
		nodes[i].retries = retries;
		FUNC14(&nodes[i], STEP_RESOLVE_ADDR);
		ret = FUNC11(nodes[i].id, rai->ai_src_addr,
					rai->ai_dst_addr, timeout);
		if (ret) {
			FUNC4("failure getting addr");
			nodes[i].error = 1;
			continue;
		}
		started[STEP_RESOLVE_ADDR]++;
	}
	while (started[STEP_RESOLVE_ADDR] != completed[STEP_RESOLVE_ADDR]) FUNC13();
	FUNC1(STEP_RESOLVE_ADDR);

	FUNC5("resolving route\n");
	FUNC15(STEP_RESOLVE_ROUTE);
	for (i = 0; i < connections; i++) {
		if (nodes[i].error)
			continue;
		nodes[i].retries = retries;
		FUNC14(&nodes[i], STEP_RESOLVE_ROUTE);
		ret = FUNC12(nodes[i].id, timeout);
		if (ret) {
			FUNC4("failure resolving route");
			nodes[i].error = 1;
			continue;
		}
		started[STEP_RESOLVE_ROUTE]++;
	}
	while (started[STEP_RESOLVE_ROUTE] != completed[STEP_RESOLVE_ROUTE]) FUNC13();
	FUNC1(STEP_RESOLVE_ROUTE);

	FUNC5("creating qp\n");
	FUNC15(STEP_CREATE_QP);
	for (i = 0; i < connections; i++) {
		if (nodes[i].error)
			continue;
		FUNC14(&nodes[i], STEP_CREATE_QP);
		ret = FUNC9(nodes[i].id, NULL, &init_qp_attr);
		if (ret) {
			FUNC4("failure creating qp");
			nodes[i].error = 1;
			continue;
		}
		FUNC0(&nodes[i], STEP_CREATE_QP);
	}
	FUNC1(STEP_CREATE_QP);

	FUNC5("connecting\n");
	FUNC15(STEP_CONNECT);
	for (i = 0; i < connections; i++) {
		if (nodes[i].error)
			continue;
		FUNC14(&nodes[i], STEP_CONNECT);
		ret = FUNC8(nodes[i].id, &conn_param);
		if (ret) {
			FUNC4("failure rconnecting");
			nodes[i].error = 1;
			continue;
		}
		started[STEP_CONNECT]++;
	}
	while (started[STEP_CONNECT] != completed[STEP_CONNECT]) FUNC13();
	FUNC1(STEP_CONNECT);

	FUNC5("disconnecting\n");
	FUNC15(STEP_DISCONNECT);
	for (i = 0; i < connections; i++) {
		if (nodes[i].error)
			continue;
		FUNC14(&nodes[i], STEP_DISCONNECT);
		FUNC10(nodes[i].id);
		started[STEP_DISCONNECT]++;
	}
	while (started[STEP_DISCONNECT] != completed[STEP_DISCONNECT]) FUNC13();
	FUNC1(STEP_DISCONNECT);

	return ret;
}