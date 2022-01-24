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
typedef  int /*<<< orphan*/  isc_eventtype_t ;
typedef  int /*<<< orphan*/  isc_eventlist_t ;
struct TYPE_6__ {unsigned int (* unsend ) (TYPE_2__*,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (TYPE_2__*,void*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 

unsigned int
FUNC3(isc_task_t *task, void *sender, isc_eventtype_t type,
		void *tag, isc_eventlist_t *events)
{
	FUNC1(FUNC0(task));

	return (task->methods->unsend(task, sender, type, tag, events));
}