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
 int NO_SUCH_FILE ; 
 int FUNC0 (char const*,char const*,char*,size_t,unsigned long*) ; 
 int FUNC1 (char const*,char const*,char*,size_t,unsigned long*) ; 

__attribute__((used)) static int
FUNC2(const char *src, const char *dst, char *pivot, size_t pvlen,
    unsigned long *rnorm)
{
	int ret;

	ret = FUNC1(src, dst, pivot, pvlen, rnorm);
	if (ret == NO_SUCH_FILE)
		ret = FUNC0(src, dst, pivot, pvlen, rnorm);

	return (ret);
}