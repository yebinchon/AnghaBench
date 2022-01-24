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
typedef  scalar_t__ iconv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ICONV_TRIVIALP ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int*) ; 

void
FUNC4(const char *src, const char *dst, int expected)
{
	iconv_t ic;
	int actual, status;

	ic = FUNC2(dst, src);
	FUNC0(ic != (iconv_t)-1);

	status = FUNC3(ic, ICONV_TRIVIALP, &actual);
	FUNC0(status == 0);

	FUNC0(actual == expected);

	status = FUNC1(ic);
	FUNC0(status == 0);
}