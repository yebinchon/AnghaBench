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
typedef  scalar_t__ u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*,int) ; 

char *
FUNC5(char *dst, const char *src, u_int dstsize)
{
	FUNC0(dst, '\0', dstsize);
	if ((FUNC4(src, "/dev/", 5) == 0) || (dstsize < (FUNC3(src) + 5)))
		FUNC2(dst, src, dstsize);
	else {
		FUNC2(dst, "/dev/", dstsize);
		FUNC1(dst, src, dstsize);
	}
	return (dst);
}