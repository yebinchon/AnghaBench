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
struct ub_event {scalar_t__ magic; TYPE_1__* vmt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* winsock_tcp_wouldblock ) (struct ub_event*,int) ;} ;

/* Variables and functions */
 scalar_t__ UB_EVENT_MAGIC ; 
 TYPE_1__ default_event_vmt ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_event*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ub_event*,int) ; 

void
FUNC3(struct ub_event* ev, int eventbits)
{
	if (ev->magic == UB_EVENT_MAGIC) {
		FUNC0(ev->vmt != &default_event_vmt ||
			ev->vmt->winsock_tcp_wouldblock ==
			my_winsock_tcp_wouldblock);
		(*ev->vmt->winsock_tcp_wouldblock)(ev, eventbits);
	}
}