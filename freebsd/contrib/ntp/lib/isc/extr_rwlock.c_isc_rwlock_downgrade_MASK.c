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
struct TYPE_4__ {scalar_t__ type; int active; } ;
typedef  TYPE_1__ isc_rwlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ isc_rwlocktype_read ; 
 scalar_t__ isc_rwlocktype_write ; 

void
FUNC2(isc_rwlock_t *rwl) {

	FUNC0(FUNC1(rwl));
	FUNC0(rwl->type == isc_rwlocktype_write);
	FUNC0(rwl->active == 1);

	rwl->type = isc_rwlocktype_read;
}