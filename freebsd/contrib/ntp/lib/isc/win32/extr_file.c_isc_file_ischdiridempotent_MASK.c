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
typedef  int /*<<< orphan*/  isc_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_FALSE ; 
 int /*<<< orphan*/  ISC_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

isc_boolean_t
FUNC3(const char *filename) {
	FUNC0(filename != NULL);

	if (FUNC1(filename))
		return (ISC_TRUE);
	if (filename[0] == '\\')
		return (ISC_TRUE);
	if (filename[0] == '/')
		return (ISC_TRUE);
	if (FUNC2(filename))
		return (ISC_TRUE);
	return (ISC_FALSE);
}