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
struct TYPE_3__ {int /*<<< orphan*/  remove_event; int /*<<< orphan*/  insert_event; } ;
typedef  TYPE_1__ USER_SERVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(void *userdata)
{
	USER_SERVICE_T *user_service = userdata;
	
	FUNC0(&user_service->insert_event);
	FUNC0(&user_service->remove_event);

	FUNC1(user_service);
}