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
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (char const*,char const*,struct tm*,int /*<<< orphan*/ ) ; 

char *
FUNC2(const char * __restrict buf, const char * __restrict fmt,
    struct tm * __restrict tm)
{
	return FUNC1(buf, fmt, tm, FUNC0());
}