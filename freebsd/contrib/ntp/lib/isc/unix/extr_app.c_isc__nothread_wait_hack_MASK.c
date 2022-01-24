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
typedef  scalar_t__ isc_result_t ;
typedef  int isc_mutex_t ;
typedef  int isc_condition_t ;
struct TYPE_3__ {void* want_shutdown; void* want_reload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* ISC_FALSE ; 
 scalar_t__ ISC_R_RELOAD ; 
 scalar_t__ ISC_R_SUCCESS ; 
 void* ISC_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 void* in_recursive_evloop ; 
 TYPE_1__ isc_g_appctx ; 
 void* signalled ; 

isc_result_t
FUNC3(isc_condition_t *cp, isc_mutex_t *mp) {
	isc_result_t result;

	FUNC1(cp);
	FUNC1(mp);

	FUNC0(!in_recursive_evloop);
	in_recursive_evloop = ISC_TRUE;

	FUNC0(*mp == 1); /* Mutex must be locked on entry. */
	--*mp;

	result = FUNC2(&isc_g_appctx);
	if (result == ISC_R_RELOAD)
		isc_g_appctx.want_reload = ISC_TRUE;
	if (signalled) {
		isc_g_appctx.want_shutdown = ISC_FALSE;
		signalled = ISC_FALSE;
	}

	++*mp;
	in_recursive_evloop = ISC_FALSE;
	return (ISC_R_SUCCESS);
}