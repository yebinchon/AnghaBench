#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef  TYPE_2__ isc_task_t ;
typedef  int /*<<< orphan*/  isc_event_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* sendanddetach ) (TYPE_2__**,int /*<<< orphan*/ **) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int /*<<< orphan*/ **) ; 

void
FUNC4(isc_task_t **taskp, isc_event_t **eventp) {
	FUNC2(taskp != NULL && FUNC1(*taskp));
	FUNC2(eventp != NULL && *eventp != NULL);

	(*taskp)->methods->sendanddetach(taskp, eventp);

	FUNC0(*taskp == NULL && *eventp == NULL);
}