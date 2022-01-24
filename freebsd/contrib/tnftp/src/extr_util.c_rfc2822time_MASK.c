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
typedef  int /*<<< orphan*/  result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (char*,int,char*,struct tm const*) ; 

const char *
FUNC2(const struct tm *tm)
{
	static char result[50];

	if (FUNC1(result, sizeof(result),
	    "%a, %d %b %Y %H:%M:%S %z\n", tm) == 0)
		FUNC0(1, "Can't convert RFC2822 time: buffer too small");
	return result;
}