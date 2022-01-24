#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  cma_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  dst_addr; TYPE_2__* nodes; int /*<<< orphan*/  cmathread; int /*<<< orphan*/  src_addr; int /*<<< orphan*/  dst_in; int /*<<< orphan*/  src_in; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  cma_thread ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int connections ; 
 int /*<<< orphan*/  dst_addr ; 
 int FUNC3 (scalar_t__,struct sockaddr*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sockaddr*) ; 
 scalar_t__ is_sender ; 
 scalar_t__ message_count ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 () ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ src_addr ; 
 TYPE_1__ test ; 
 scalar_t__ unmapped_addr ; 

__attribute__((used)) static int FUNC14(void)
{
	int i, ret, err;

	FUNC8("mckey: starting %s\n", is_sender ? "client" : "server");
	if (src_addr) {
		ret = FUNC3(src_addr, (struct sockaddr *) &test.src_in);
		if (ret)
			return ret;
	}

	ret = FUNC4(dst_addr, (struct sockaddr *) &test.dst_in);
	if (ret)
		return ret;

	FUNC8("mckey: joining\n");
	for (i = 0; i < connections; i++) {
		if (src_addr) {
			ret = FUNC10(test.nodes[i].cma_id,
					     test.src_addr);
			if (ret) {
				FUNC5("mckey: addr bind failure");
				FUNC1();
				return ret;
			}
		}

		if (unmapped_addr)
			ret = FUNC0(&test.nodes[i]);
		else
			ret = FUNC12(test.nodes[i].cma_id,
						test.src_addr, test.dst_addr,
						2000);
		if (ret) {
			FUNC5("mckey: resolve addr failure");
			FUNC1();
			return ret;
		}
	}

	ret = FUNC2();
	if (ret)
		goto out;

	FUNC9(&test.cmathread, NULL, cma_thread, NULL);

	/*
	 * Pause to give SM chance to configure switches.  We don't want to
	 * handle reliability issue in this simple test program.
	 */
	FUNC13(3);

	if (message_count) {
		if (is_sender) {
			FUNC8("initiating data transfers\n");
			for (i = 0; i < connections; i++) {
				ret = FUNC7(&test.nodes[i], 0);
				if (ret)
					goto out;
			}
		} else {
			FUNC8("receiving data transfers\n");
			ret = FUNC6();
			if (ret)
				goto out;
		}
		FUNC8("data transfers complete\n");
	}
out:
	for (i = 0; i < connections; i++) {
		err = FUNC11(test.nodes[i].cma_id,
					   test.dst_addr);
		if (err) {
			FUNC5("mckey: failure leaving");
			ret = err;
		}
	}
	return ret;
}