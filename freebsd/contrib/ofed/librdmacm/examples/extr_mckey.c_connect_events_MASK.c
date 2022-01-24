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
struct rdma_cm_event {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  channel; scalar_t__ connects_left; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct rdma_cm_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct rdma_cm_event*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct rdma_cm_event**) ; 
 TYPE_1__ test ; 

__attribute__((used)) static int FUNC3(void)
{
	struct rdma_cm_event *event;
	int ret = 0;

	while (test.connects_left && !ret) {
		ret = FUNC2(test.channel, &event);
		if (!ret) {
			ret = FUNC0(event->id, event);
			FUNC1(event);
		}
	}
	return ret;
}