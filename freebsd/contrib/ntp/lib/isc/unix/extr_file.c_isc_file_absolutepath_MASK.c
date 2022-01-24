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

/* Variables and functions */
 scalar_t__ ISC_R_NOSPACE ; 
 scalar_t__ ISC_R_SUCCESS ; 
 scalar_t__ FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (char const*) ; 

isc_result_t
FUNC3(const char *filename, char *path, size_t pathlen) {
	isc_result_t result;
	result = FUNC0(path, pathlen);
	if (result != ISC_R_SUCCESS)
		return (result);
	if (FUNC2(path) + FUNC2(filename) + 1 > pathlen)
		return (ISC_R_NOSPACE);
	FUNC1(path, filename, pathlen);
	return (ISC_R_SUCCESS);
}