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
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rdma_cm_id {int dummy; } ;
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_10__ {int /*<<< orphan*/  cond; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct TYPE_9__ {int /*<<< orphan*/  ai_port_space; } ;
struct TYPE_8__ {int /*<<< orphan*/  ai_src_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  cond; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  channel ; 
 int /*<<< orphan*/  disc_handler_thread ; 
 TYPE_6__ disc_work ; 
 int /*<<< orphan*/  dst_addr ; 
 char* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,TYPE_2__**) ; 
 TYPE_3__ hints ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* rai ; 
 int FUNC9 (struct rdma_cm_id*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct rdma_cm_id**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rdma_cm_id*) ; 
 int FUNC12 (struct rdma_cm_id*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  req_handler_thread ; 
 TYPE_1__ req_work ; 
 int /*<<< orphan*/  src_addr ; 

__attribute__((used)) static int FUNC13(void)
{
	pthread_t req_thread, disc_thread;
	struct rdma_cm_id *listen_id;
	int ret;

	FUNC0(&req_work.list);
	FUNC0(&disc_work.list);
	ret = FUNC8(&req_work.lock, NULL);
	if (ret) {
		FUNC3("initializing mutex for req work");
		return ret;
	}

	ret = FUNC8(&disc_work.lock, NULL);
	if (ret) {
		FUNC3("initializing mutex for disc work");
		return ret;
	}

	ret = FUNC6(&req_work.cond, NULL);
	if (ret) {
		FUNC3("initializing cond for req work");
		return ret;
	}

	ret = FUNC6(&disc_work.cond, NULL);
	if (ret) {
		FUNC3("initializing cond for disc work");
		return ret;
	}

	ret = FUNC7(&req_thread, NULL, req_handler_thread, NULL);
	if (ret) {
		FUNC3("failed to create req handler thread");
		return ret;
	}

	ret = FUNC7(&disc_thread, NULL, disc_handler_thread, NULL);
	if (ret) {
		FUNC3("failed to create disconnect handler thread");
		return ret;
	}

	ret = FUNC10(channel, &listen_id, NULL, hints.ai_port_space);
	if (ret) {
		FUNC3("listen request failed");
		return ret;
	}

	ret = FUNC2(src_addr, dst_addr, port, &hints, &rai);
	if (ret) {
		FUNC4("getrdmaaddr error: %s\n", FUNC1(ret));
		goto out;
	}

	ret = FUNC9(listen_id, rai->ai_src_addr);
	if (ret) {
		FUNC3("bind address failed");
		goto out;
	}

	ret = FUNC12(listen_id, 0);
	if (ret) {
		FUNC3("failure trying to listen");
		goto out;
	}

	FUNC5(NULL);
 out:
	FUNC11(listen_id);
	return ret;
}