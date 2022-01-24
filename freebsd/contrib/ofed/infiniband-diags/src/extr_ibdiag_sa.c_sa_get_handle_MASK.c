#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int qp; scalar_t__ qkey; int /*<<< orphan*/  lid; } ;
struct sa_handle {int /*<<< orphan*/  fd; int /*<<< orphan*/  agent; TYPE_1__ dport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ IB_DEFAULT_QP1_QKEY ; 
 int /*<<< orphan*/  IB_SA_CLASS ; 
 struct sa_handle* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sa_handle*) ; 
 char* ibd_ca ; 
 int /*<<< orphan*/  ibd_ca_port ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

struct sa_handle * FUNC7(void)
{
	struct sa_handle * handle;
	handle = FUNC2(1, sizeof(*handle));
	if (!handle)
		FUNC0("calloc failed");

	FUNC4(ibd_ca, ibd_ca_port, &handle->dport);
	if (!handle->dport.lid) {
		FUNC1("No SM/SA found on port %s:%d",
			ibd_ca ? "" : ibd_ca,
			ibd_ca_port);
		FUNC3(handle);
		return (NULL);
	}

	handle->dport.qp = 1;
	if (!handle->dport.qkey)
		handle->dport.qkey = IB_DEFAULT_QP1_QKEY;

	handle->fd = FUNC5(ibd_ca, ibd_ca_port);
	handle->agent = FUNC6(handle->fd, IB_SA_CLASS, 2, 1, NULL);

	return handle;
}