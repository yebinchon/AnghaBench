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

/* Variables and functions */
 scalar_t__ MODE_COMPRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,size_t const) ; 
 scalar_t__ opt_mode ; 
 size_t FUNC2 (char const*) ; 
 char* FUNC3 (char const*,size_t const) ; 

extern char *
FUNC4(const char *src_name)
{
	FUNC0(src_name != NULL);

	// Length of the name is needed in all cases to locate the end of
	// the string to compare the suffix, so calculate the length here.
	const size_t src_len = FUNC2(src_name);

	return opt_mode == MODE_COMPRESS
			? FUNC1(src_name, src_len)
			: FUNC3(src_name, src_len);
}