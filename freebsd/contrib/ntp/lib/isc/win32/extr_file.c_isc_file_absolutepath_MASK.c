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
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (char const*,size_t,char*,char**) ; 
 int /*<<< orphan*/  ISC_R_NOSPACE ; 
 int /*<<< orphan*/  ISC_R_NOTFOUND ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

isc_result_t
FUNC2(const char *filename, char *path, size_t pathlen) {
	char *ptrname;
	DWORD retval;

	FUNC1(filename != NULL);
	FUNC1(path != NULL);

	retval = FUNC0(filename, pathlen, path, &ptrname);

	/* Something went wrong in getting the path */
	if (retval == 0)
		return (ISC_R_NOTFOUND);
	/* Caller needs to provide a larger buffer to contain the string */
	if (retval >= pathlen)
		return (ISC_R_NOSPACE);
	return (ISC_R_SUCCESS);
}