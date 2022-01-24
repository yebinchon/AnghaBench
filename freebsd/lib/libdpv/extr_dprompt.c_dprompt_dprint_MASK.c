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
 int /*<<< orphan*/  FUNC0 (int,char*,char*,char const*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  dprompt ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int gauge_percent ; 
 scalar_t__ use_color ; 

void
FUNC2(int fd, const char *prefix, const char *append, int overall)
{
	int percent = gauge_percent;

	if (overall >= 0 && overall <= 100)
		gauge_percent = percent = overall;
	FUNC0(fd, "XXX\n%s%s%s%s\nXXX\n%i\n", use_color ? "\\Zn" : "",
	    prefix ? prefix : "", dprompt, append ? append : "", percent);
	FUNC1(fd);
}