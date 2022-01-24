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
typedef  scalar_t__ isc_rwlocktype_t ;
struct TYPE_4__ {scalar_t__ type; int active; } ;
typedef  TYPE_1__ isc_rwlock_t ;
typedef  int /*<<< orphan*/  isc_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_LOCKBUSY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ isc_rwlocktype_read ; 
 scalar_t__ isc_rwlocktype_write ; 

isc_result_t
FUNC2(isc_rwlock_t *rwl, isc_rwlocktype_t type) {
	FUNC0(FUNC1(rwl));

	if (type == isc_rwlocktype_read) {
		if (rwl->type != isc_rwlocktype_read && rwl->active != 0)
			return (ISC_R_LOCKBUSY);
		rwl->type = isc_rwlocktype_read;
		rwl->active++;
	} else {
		if (rwl->active != 0)
			return (ISC_R_LOCKBUSY);
		rwl->type = isc_rwlocktype_write;
		rwl->active = 1;
	}
	return (ISC_R_SUCCESS);
}