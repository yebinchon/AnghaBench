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
struct rlimit {int /*<<< orphan*/  rlim_cur; } ;
typedef  scalar_t__ isc_result_t ;
typedef  int /*<<< orphan*/  isc_resourcevalue_t ;
typedef  int /*<<< orphan*/  isc_resource_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int FUNC1 (int,struct rlimit*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*) ; 

isc_result_t
FUNC3(isc_resource_t resource, isc_resourcevalue_t *value) {
	int unixresult;
	int unixresource;
	struct rlimit rl;
	isc_result_t result;

	result = FUNC2(resource, &unixresource);
	if (result == ISC_R_SUCCESS) {
		unixresult = FUNC1(unixresource, &rl);
		FUNC0(unixresult == 0);
		*value = rl.rlim_cur;
	}

	return (result);
}