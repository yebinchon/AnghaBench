#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rdma_cm_id {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  ai_src_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  ai_port_space; } ;
struct TYPE_8__ {int /*<<< orphan*/  cma_id; scalar_t__ connected; } ;
struct TYPE_7__ {TYPE_3__* nodes; TYPE_6__* rai; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  RECV_CQ_INDEX ; 
 int /*<<< orphan*/  SEND_CQ_INDEX ; 
 int FUNC0 () ; 
 int connections ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  dst_addr ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,TYPE_6__**) ; 
 TYPE_4__ hints ; 
 scalar_t__ message_count ; 
 scalar_t__ migrate ; 
 int FUNC4 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  port ; 
 int FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (struct rdma_cm_id*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct rdma_cm_id**,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct rdma_cm_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  src_addr ; 
 TYPE_1__ test ; 

__attribute__((used)) static int FUNC14(void)
{
	struct rdma_cm_id *listen_id;
	int i, ret;

	FUNC8("cmatose: starting server\n");
	ret = FUNC10(test.channel, &listen_id, &test, hints.ai_port_space);
	if (ret) {
		FUNC5("cmatose: listen request failed");
		return ret;
	}

	ret = FUNC3(src_addr, dst_addr, port, &hints, &test.rai);
	if (ret) {
		FUNC8("cmatose: getrdmaaddr error: %s\n", FUNC2(ret));
		goto out;
	}

	ret = FUNC9(listen_id, test.rai->ai_src_addr);
	if (ret) {
		FUNC5("cmatose: bind address failed");
		goto out;
	}

	ret = FUNC13(listen_id, 0);
	if (ret) {
		FUNC5("cmatose: failure trying to listen");
		goto out;
	}

	ret = FUNC0();
	if (ret)
		goto out;

	if (message_count) {
		FUNC8("initiating data transfers\n");
		for (i = 0; i < connections; i++) {
			ret = FUNC7(&test.nodes[i]);
			if (ret)
				goto out;
		}

		FUNC8("completing sends\n");
		ret = FUNC6(SEND_CQ_INDEX);
		if (ret)
			goto out;

		FUNC8("receiving data transfers\n");
		ret = FUNC6(RECV_CQ_INDEX);
		if (ret)
			goto out;
		FUNC8("data transfers complete\n");

	}

	if (migrate) {
		ret = FUNC4(listen_id);
		if (ret)
			goto out;
	}

	FUNC8("cmatose: disconnecting\n");
	for (i = 0; i < connections; i++) {
		if (!test.nodes[i].connected)
			continue;

		test.nodes[i].connected = 0;
		FUNC12(test.nodes[i].cma_id);
	}

	ret = FUNC1();

 	FUNC8("disconnected\n");

out:
	FUNC11(listen_id);
	return ret;
}