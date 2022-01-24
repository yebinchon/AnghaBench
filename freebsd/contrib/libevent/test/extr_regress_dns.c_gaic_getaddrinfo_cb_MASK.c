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
struct gaic_request_status {scalar_t__ magic; int canceled; int /*<<< orphan*/  cancel_event; struct event_base* base; } ;
struct evutil_addrinfo {int dummy; } ;
struct event_base {int dummy; } ;

/* Variables and functions */
 int EVUTIL_EAI_CANCEL ; 
 scalar_t__ GAIC_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct gaic_request_status*) ; 
 int /*<<< orphan*/  FUNC3 (struct gaic_request_status*,int,int) ; 
 scalar_t__ pending ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(int result, struct evutil_addrinfo *res, void *arg)
{
	struct gaic_request_status *status = arg;
	struct event_base *base = status->base;
	FUNC4(status->magic == GAIC_MAGIC);

	if (result == EVUTIL_EAI_CANCEL) {
		FUNC4(status->canceled);
	}
	FUNC1(&status->cancel_event);

	FUNC3(status, 0xf0, sizeof(*status));
	FUNC2(status);

end:
	if (--pending <= 0)
		FUNC0(base, NULL);
}