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
struct rping_cb {scalar_t__ state; int /*<<< orphan*/  persistent_server_thread; int /*<<< orphan*/  sem; } ;
typedef  int /*<<< orphan*/  pthread_attr_t ;

/* Variables and functions */
 scalar_t__ CONNECT_REQUEST ; 
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 struct rping_cb* FUNC0 (struct rping_cb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rping_cb*) ; 
 int FUNC6 (struct rping_cb*) ; 
 int /*<<< orphan*/  rping_persistent_server_thread ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC8(struct rping_cb *listening_cb)
{
	int ret;
	struct rping_cb *cb;
	pthread_attr_t attr;

	ret = FUNC6(listening_cb);
	if (ret)
		return ret;

	/*
	 * Set persistent server threads to DEATCHED state so
	 * they release all their resources when they exit.
	 */
	ret = FUNC3(&attr);
	if (ret) {
		FUNC2("pthread_attr_init");
		return ret;
	}
	ret = FUNC4(&attr, PTHREAD_CREATE_DETACHED);
	if (ret) {
		FUNC2("pthread_attr_setdetachstate");
		return ret;
	}

	while (1) {
		FUNC7(&listening_cb->sem);
		if (listening_cb->state != CONNECT_REQUEST) {
			FUNC1(stderr, "wait for CONNECT_REQUEST state %ld\n",
				listening_cb->state);
			return -1;
		}

		cb = FUNC0(listening_cb);
		if (!cb)
			return -1;

		ret = FUNC5(&cb->persistent_server_thread, &attr, rping_persistent_server_thread, cb);
		if (ret) {
			FUNC2("pthread_create");
			return ret;
		}
	}
	return 0;
}