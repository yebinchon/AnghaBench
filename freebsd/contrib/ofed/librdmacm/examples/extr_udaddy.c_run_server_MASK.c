#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct rdma_cm_id {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  ai_src_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  ai_port_space; } ;
struct TYPE_6__ {int /*<<< orphan*/ * nodes; TYPE_5__* rai; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBV_SEND_SIGNALED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int connections ; 
 int /*<<< orphan*/  dst_addr ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,TYPE_5__**) ; 
 TYPE_3__ hints ; 
 scalar_t__ message_count ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  port ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (struct rdma_cm_id*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct rdma_cm_id**,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_cm_id*) ; 
 int FUNC10 (struct rdma_cm_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  src_addr ; 
 TYPE_1__ test ; 

__attribute__((used)) static int FUNC11(void)
{
	struct rdma_cm_id *listen_id;
	int i, ret;

	FUNC6("udaddy: starting server\n");
	ret = FUNC8(test.channel, &listen_id, &test, hints.ai_port_space);
	if (ret) {
		FUNC3("udaddy: listen request failed");
		return ret;
	}

	ret = FUNC2(src_addr, dst_addr, port, &hints, &test.rai);
	if (ret) {
		FUNC6("udaddy: getrdmaaddr error: %s\n", FUNC1(ret));
		goto out;
	}

	ret = FUNC7(listen_id, test.rai->ai_src_addr);
	if (ret) {
		FUNC3("udaddy: bind address failed");
		goto out;
	}

	ret = FUNC10(listen_id, 0);
	if (ret) {
		FUNC3("udaddy: failure trying to listen");
		goto out;
	}

	FUNC0();

	if (message_count) {
		FUNC6("receiving data transfers\n");
		ret = FUNC4();
		if (ret)
			goto out;

		FUNC6("sending replies\n");
		for (i = 0; i < connections; i++) {
			ret = FUNC5(&test.nodes[i], IBV_SEND_SIGNALED);
			if (ret)
				goto out;
		}

		ret = FUNC4();
		if (ret)
			goto out;
		FUNC6("data transfers complete\n");
	}
out:
	FUNC9(listen_id);
	return ret;
}