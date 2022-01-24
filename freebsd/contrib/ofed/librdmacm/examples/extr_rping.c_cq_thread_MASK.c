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
struct rping_cb {struct ibv_cq* cq; int /*<<< orphan*/  channel; } ;
struct ibv_cq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibv_cq*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ibv_cq**,void**) ; 
 int FUNC4 (struct ibv_cq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct rping_cb*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void *FUNC8(void *arg)
{
	struct rping_cb *cb = arg;
	struct ibv_cq *ev_cq;
	void *ev_ctx;
	int ret;
	
	FUNC0("cq_thread started.\n");

	while (1) {	
		FUNC6();

		ret = FUNC3(cb->channel, &ev_cq, &ev_ctx);
		if (ret) {
			FUNC1(stderr, "Failed to get cq event!\n");
			FUNC5(NULL);
		}
		if (ev_cq != cb->cq) {
			FUNC1(stderr, "Unknown CQ!\n");
			FUNC5(NULL);
		}
		ret = FUNC4(cb->cq, 0);
		if (ret) {
			FUNC1(stderr, "Failed to set notify!\n");
			FUNC5(NULL);
		}
		ret = FUNC7(cb);
		FUNC2(cb->cq, 1);
		if (ret)
			FUNC5(NULL);
	}
}