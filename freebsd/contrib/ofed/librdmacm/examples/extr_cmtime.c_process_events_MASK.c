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
struct rdma_cm_event {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  channel ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rdma_cm_event*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct rdma_cm_event**) ; 

__attribute__((used)) static void *FUNC3(void *arg)
{
	struct rdma_cm_event *event;
	int ret = 0;

	while (!ret) {
		ret = FUNC2(channel, &event);
		if (!ret) {
			FUNC0(event->id, event);
		} else {
			FUNC1("failure in rdma_get_cm_event in process_server_events");
			ret = errno;
		}
	}
	return NULL;
}