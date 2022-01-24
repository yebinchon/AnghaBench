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
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_3__ {scalar_t__ status; int /*<<< orphan*/  counter; } ;
typedef  TYPE_1__ isc_once_t ;

/* Variables and functions */
 scalar_t__ ISC_ONCE_INIT_DONE ; 
 scalar_t__ ISC_ONCE_INIT_NEEDED ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

isc_result_t
FUNC3(isc_once_t *controller, void(*function)(void)) {
	FUNC1(controller != NULL && function != NULL);

	if (controller->status == ISC_ONCE_INIT_NEEDED) {

		if (FUNC0(&controller->counter) == 0) {
			if (controller->status == ISC_ONCE_INIT_NEEDED) {
				function();
				controller->status = ISC_ONCE_INIT_DONE;
			}
		} else {
			while (controller->status == ISC_ONCE_INIT_NEEDED) {
				/*
				 * Sleep(0) indicates that this thread 
				 * should be suspended to allow other 
				 * waiting threads to execute.
				 */
				FUNC2(0);
			}
		}
	}

	return (ISC_R_SUCCESS);
}