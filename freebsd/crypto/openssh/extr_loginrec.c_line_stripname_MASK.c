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
 int /*<<< orphan*/  FUNC0 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 

char *
FUNC3(char *dst, const char *src, int dstsize)
{
	FUNC0(dst, '\0', dstsize);
	if (FUNC2(src, "/dev/", 5) == 0)
		FUNC1(dst, src + 5, dstsize);
	else
		FUNC1(dst, src, dstsize);
	return (dst);
}