#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_taskmgr_t ;
typedef  int isc_boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ isc__taskmgr_t ;

/* Variables and functions */
 int ISC_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* taskmgr ; 

isc_boolean_t
FUNC3(isc_taskmgr_t *manager0) {
	isc__taskmgr_t *manager = (void*)manager0;
	isc_boolean_t is_ready;

#ifdef USE_SHARED_MANAGER
	if (manager == NULL)
		manager = taskmgr;
#endif
	if (manager == NULL)
		return (ISC_FALSE);

	FUNC0(&manager->lock);
	is_ready = !FUNC2(manager);
	FUNC1(&manager->lock);

	return (is_ready);
}