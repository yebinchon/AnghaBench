#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ isc_result_t ;
struct TYPE_10__ {scalar_t__ result; } ;
typedef  TYPE_1__ isc_interfaceiter_t ;

/* Variables and functions */
 scalar_t__ ISC_R_IGNORE ; 
 scalar_t__ ISC_R_NOMORE ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ use_GAA ; 
 int use_GAA_determined ; 

isc_result_t
FUNC8(isc_interfaceiter_t *iter) {
	isc_result_t result;

	FUNC0(FUNC1(iter));
	FUNC0(iter->result == ISC_R_SUCCESS);
	FUNC0(use_GAA_determined);

	if (use_GAA) {
		do {
			result = FUNC7(iter);
			if (ISC_R_NOMORE == result)
				goto set_result;
			result = FUNC4(iter);
		} while (ISC_R_IGNORE == result);
		goto set_result;
	}

	for (;;) {
		result = FUNC5(iter);
		if (result == ISC_R_NOMORE) {
			result = FUNC6(iter);
			if (result != ISC_R_SUCCESS)
				break;
			result = FUNC3(iter);
			if (result != ISC_R_IGNORE)
				break;
		} else if (result != ISC_R_SUCCESS)
			break;
		result = FUNC2(iter);
		if (result != ISC_R_IGNORE)
			break;
	}
 set_result:
	iter->result = result;
	return (result);
}