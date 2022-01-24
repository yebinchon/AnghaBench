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
struct rdma_event_channel {scalar_t__ fd; } ;

/* Variables and functions */
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (struct rdma_event_channel*) ; 
 struct rdma_event_channel* FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 () ; 

struct rdma_event_channel *FUNC4(void)
{
	struct rdma_event_channel *channel;

	if (FUNC3())
		return NULL;

	channel = FUNC1(sizeof(*channel));
	if (!channel)
		return NULL;

	channel->fd = FUNC2("/dev/rdma_cm", O_RDWR | O_CLOEXEC);
	if (channel->fd < 0) {
		goto err;
	}
	return channel;
err:
	FUNC0(channel);
	return NULL;
}