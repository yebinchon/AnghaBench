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
typedef  int /*<<< orphan*/  isc_taskmgr_t ;
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  int /*<<< orphan*/  isc__taskmgr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_NOTFOUND ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * taskmgr ; 

isc_result_t
FUNC1(isc_taskmgr_t *manager0) {
	isc__taskmgr_t *manager = (void*)manager0;

#ifdef USE_SHARED_MANAGER
	if (manager == NULL)
		manager = taskmgr;
#endif
	if (manager == NULL)
		return (ISC_R_NOTFOUND);

	FUNC0(manager);

	return (ISC_R_SUCCESS);
}