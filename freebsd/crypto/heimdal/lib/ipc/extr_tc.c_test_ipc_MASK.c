#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * heim_isemaphore ;
typedef  int /*<<< orphan*/  heim_ipc ;
struct TYPE_5__ {int /*<<< orphan*/ * data; scalar_t__ length; } ;
typedef  TYPE_1__ heim_idata ;

/* Variables and functions */
 int /*<<< orphan*/  HEIM_IPC_WAIT_FOREVER ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reply ; 

__attribute__((used)) static void
FUNC7(const char *service)
{
    heim_isemaphore s;
    heim_idata req, rep;
    heim_ipc ipc;
    int ret;

    ret = FUNC4(service, &ipc);
    if (ret)
	FUNC0(1, "heim_ipc_init_context: %d", ret);

    req.length = 0;
    req.data = NULL;

    ret = FUNC2(ipc, &req, &rep, NULL);
    if (ret)
	FUNC0(1, "heim_ipc_call: %d", ret);

    s = FUNC5(0);
    if (s == NULL)
	FUNC0(1, "heim_ipc_semaphore_create");

    ret = FUNC1(ipc, &req, s, reply);
    if (ret)
	FUNC0(1, "heim_ipc_async: %d", ret);

    FUNC6(s, HEIM_IPC_WAIT_FOREVER); /* wait for reply to complete the work */

    FUNC3(ipc);
}