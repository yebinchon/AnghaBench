#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ai_dst_addr; int /*<<< orphan*/  ai_src_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  cma_id; } ;
struct TYPE_4__ {TYPE_2__* nodes; TYPE_3__* rai; } ;

/* Variables and functions */
 int /*<<< orphan*/  RECV_CQ_INDEX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int connections ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  dst_addr ; 
 char* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  hints ; 
 scalar_t__ message_count ; 
 scalar_t__ migrate ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  port ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  src_addr ; 
 TYPE_1__ test ; 

__attribute__((used)) static int FUNC11(void)
{
	int i, ret, ret2;

	FUNC9("cmatose: starting client\n");

	ret = FUNC4(src_addr, dst_addr, port, &hints, &test.rai);
	if (ret) {
		FUNC9("cmatose: getaddrinfo error: %s\n", FUNC3(ret));
		return ret;
	}

	FUNC9("cmatose: connecting\n");
	for (i = 0; i < connections; i++) {
		ret = FUNC10(test.nodes[i].cma_id, test.rai->ai_src_addr,
					test.rai->ai_dst_addr, 2000);
		if (ret) {
			FUNC6("cmatose: failure getting addr");
			FUNC0();
			return ret;
		}
	}

	ret = FUNC1();
	if (ret)
		goto disc;

	if (message_count) {
		FUNC9("receiving data transfers\n");
		ret = FUNC7(RECV_CQ_INDEX);
		if (ret)
			goto disc;

		FUNC9("sending replies\n");
		for (i = 0; i < connections; i++) {
			ret = FUNC8(&test.nodes[i]);
			if (ret)
				goto disc;
		}

		FUNC9("data transfers complete\n");
	}

	ret = 0;

	if (migrate) {
		ret = FUNC5(NULL);
		if (ret)
			goto out;
	}
disc:
	ret2 = FUNC2();
	if (ret2)
		ret = ret2;
out:
	return ret;
}