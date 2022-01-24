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
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/ * isc_appctxcreatefunc_t ;

/* Variables and functions */
 scalar_t__ ISC_R_EXISTS ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * appctx_createfunc ; 
 int /*<<< orphan*/  createlock ; 
 int /*<<< orphan*/  initialize ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  once ; 

isc_result_t
FUNC4(isc_appctxcreatefunc_t createfunc) {
	isc_result_t result = ISC_R_SUCCESS;

	FUNC1(FUNC3(&once, initialize) == ISC_R_SUCCESS);

	FUNC0(&createlock);
	if (appctx_createfunc == NULL)
		appctx_createfunc = createfunc;
	else
		result = ISC_R_EXISTS;
	FUNC2(&createlock);

	return (result);
}