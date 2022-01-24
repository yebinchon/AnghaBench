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
struct verbs_device {TYPE_1__* ops; } ;
struct verbs_context {struct verbs_context* priv; } ;
struct ibv_context {int async_fd; int cmd_fd; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_context ) (struct ibv_context*) ;int /*<<< orphan*/  (* uninit_context ) (struct verbs_device*,struct ibv_context*) ;} ;

/* Variables and functions */
 int abi_ver ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct verbs_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct verbs_device*,struct ibv_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct ibv_context*) ; 
 struct verbs_context* FUNC4 (struct ibv_context*) ; 
 struct verbs_device* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct ibv_context *context)
{
	int async_fd = context->async_fd;
	int cmd_fd   = context->cmd_fd;
	int cq_fd    = -1;
	struct verbs_context *context_ex;
	struct verbs_device *verbs_device = FUNC5(context->device);

	context_ex = FUNC4(context);
	if (context_ex) {
		verbs_device->ops->uninit_context(verbs_device, context);
		FUNC1(context_ex->priv);
		FUNC1(context_ex);
	} else {
		verbs_device->ops->free_context(context);
	}

	FUNC0(async_fd);
	FUNC0(cmd_fd);
	if (abi_ver <= 2)
		FUNC0(cq_fd);

	return 0;
}