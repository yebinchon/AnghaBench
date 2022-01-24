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

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_NOSPACE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int FUNC3 (char const*) ; 

isc_result_t
FUNC4(const char *filename, char *buf, size_t buflen) {
	const char *base;
	size_t len;

	FUNC0(filename != NULL);
	FUNC0(buf != NULL);

	base = FUNC1(filename);
	len = FUNC3(base) + 1;

	if (len > buflen)
		return (ISC_R_NOSPACE);
	FUNC2(buf, base, len);

	return (ISC_R_SUCCESS);
}