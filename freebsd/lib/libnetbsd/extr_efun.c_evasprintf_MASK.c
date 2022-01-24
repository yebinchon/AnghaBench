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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (char**,char const*,int /*<<< orphan*/ ) ; 

int
FUNC3(char ** __restrict ret, const char * __restrict format, va_list ap)
{
	int rv;
	if ((rv = FUNC2(ret, format, ap)) == -1)
		FUNC0)(1, "Cannot format string");
	return rv;
}