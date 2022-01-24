#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct nameserver {int state; TYPE_1__* base; scalar_t__ timedout; scalar_t__ failed_times; int /*<<< orphan*/ * probe_request; int /*<<< orphan*/  timeout_event; int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  addrbuf ;
struct TYPE_3__ {int /*<<< orphan*/  global_good_nameservers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  EVDNS_LOG_MSG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct nameserver *const ns)
{
	char addrbuf[128];
	FUNC0(ns->base);
	if (ns->state) return;
	FUNC4(EVDNS_LOG_MSG, "Nameserver %s is back up",
	    FUNC3(
		    (struct sockaddr *)&ns->address,
		    addrbuf, sizeof(addrbuf)));
	FUNC2(&ns->timeout_event);
	if (ns->probe_request) {
		FUNC1(ns->base, ns->probe_request);
		ns->probe_request = NULL;
	}
	ns->state = 1;
	ns->failed_times = 0;
	ns->timedout = 0;
	ns->base->global_good_nameservers++;
}