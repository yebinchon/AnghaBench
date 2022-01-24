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
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_4__ {char* dirname; int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ isc_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_NOSPACE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 size_t FUNC5 (char const*) ; 

isc_result_t
FUNC6(isc_dir_t *dir, const char *dirname) {
	char *p;
	size_t octets;
	isc_result_t result = ISC_R_SUCCESS;

	FUNC0(FUNC1(dir));
	FUNC0(dirname != NULL);

	/*
	 * Copy directory name.  Need to have enough space for the name,
	 * a possible path separator, the wildcard, and the final NUL.
	 */
	octets = FUNC5(dirname) + 1;
	if (octets + 2 > sizeof(dir->dirname))
		/* XXXDCL ? */
		return (ISC_R_NOSPACE);
	FUNC4(dir->dirname, dirname, octets);

	/*
	 * Append path separator, if needed, and "*".
	 */
	p = dir->dirname + FUNC5(dir->dirname);
	if (dir->dirname < p && *(p - 1) != '/')
		*p++ = '/';
	*p++ = '*';
	*p = '\0';

	/*
	 * Open stream.
	 */
	dir->handle = FUNC3(dirname);

	if (dir->handle == NULL)
		return FUNC2(errno);

	return (result);
}