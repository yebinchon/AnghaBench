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
struct ibv_context {int /*<<< orphan*/  mutex; } ;
struct ibv_comp_channel {int /*<<< orphan*/  fd; scalar_t__ refcnt; struct ibv_context* context; } ;

/* Variables and functions */
 int EBUSY ; 
 int abi_ver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_comp_channel*) ; 
 int FUNC2 (struct ibv_comp_channel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct ibv_comp_channel *channel)
{
	struct ibv_context *context;
	int ret;

	context = channel->context;
	FUNC3(&context->mutex);

	if (channel->refcnt) {
		ret = EBUSY;
		goto out;
	}

	if (abi_ver <= 2) {
		ret = FUNC2(channel);
		goto out;
	}

	FUNC0(channel->fd);
	FUNC1(channel);
	ret = 0;

out:
	FUNC4(&context->mutex);

	return ret;
}