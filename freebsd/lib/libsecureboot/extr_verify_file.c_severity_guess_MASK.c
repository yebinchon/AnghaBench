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
 int VE_TRY ; 
 int VE_WANT ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 char* FUNC1 (char const*,char) ; 

__attribute__((used)) static int
FUNC2(const char *filename)
{
	const char *cp;

	/* Some files like *.conf and *.hints may be unsigned */
	if ((cp = FUNC1(filename, '.'))) {
		if (FUNC0(cp, ".conf") == 0 ||
		    FUNC0(cp, ".cookie") == 0 ||
			FUNC0(cp, ".hints") == 0)
			return (VE_TRY);
	}
	return (VE_WANT);
}