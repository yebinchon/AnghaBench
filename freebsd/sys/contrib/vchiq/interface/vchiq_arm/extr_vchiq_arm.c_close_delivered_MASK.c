#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ close_pending; int /*<<< orphan*/  close_event; TYPE_2__* service; } ;
typedef  TYPE_1__ USER_SERVICE_T ;
struct TYPE_5__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vchiq_arm_log_level ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(USER_SERVICE_T *user_service)
{
	FUNC2(vchiq_arm_log_level,
		"close_delivered(handle=%x)",
		user_service->service->handle);

	if (user_service->close_pending) {
		/* Allow the underlying service to be culled */
		FUNC0(user_service->service);

		/* Wake the user-thread blocked in close_ or remove_service */
		FUNC1(&user_service->close_event);
 
		user_service->close_pending = 0;
	}
}