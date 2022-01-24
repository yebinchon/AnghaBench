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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int connections ; 
 int /*<<< orphan*/  dst_addr ; 
 char* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  hints ; 
 scalar_t__ message_count ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  port ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  src_addr ; 
 TYPE_1__ test ; 

__attribute__((used)) static int FUNC9(void)
{
	int i, ret;

	FUNC7("udaddy: starting client\n");

	ret = FUNC3(src_addr, dst_addr, port, &hints, &test.rai);
	if (ret) {
		FUNC7("udaddy: getaddrinfo error: %s\n", FUNC2(ret));
		return ret;
	}

	FUNC7("udaddy: connecting\n");
	for (i = 0; i < connections; i++) {
		ret = FUNC8(test.nodes[i].cma_id, test.rai->ai_src_addr,
					test.rai->ai_dst_addr, 2000);
		if (ret) {
			FUNC4("udaddy: failure getting addr");
			FUNC0();
			return ret;
		}
	}

	ret = FUNC1();
	if (ret)
		goto out;

	if (message_count) {
		FUNC7("initiating data transfers\n");
		for (i = 0; i < connections; i++) {
			ret = FUNC6(&test.nodes[i], 0);
			if (ret)
				goto out;
		}
		FUNC7("receiving data transfers\n");
		ret = FUNC5();
		if (ret)
			goto out;

		FUNC7("data transfers complete\n");
	}
out:
	return ret;
}