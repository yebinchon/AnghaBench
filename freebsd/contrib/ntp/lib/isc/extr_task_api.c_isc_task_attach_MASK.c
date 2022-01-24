#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* methods; } ;
typedef  TYPE_2__ isc_task_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* attach ) (TYPE_2__*,TYPE_2__**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__**) ; 

void
FUNC4(isc_task_t *source, isc_task_t **targetp) {
	FUNC2(FUNC1(source));
	FUNC2(targetp != NULL && *targetp == NULL);

	source->methods->attach(source, targetp);

	FUNC0(*targetp == source);
}