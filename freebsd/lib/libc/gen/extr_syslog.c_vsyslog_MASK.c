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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  syslog_cancel_cleanup ; 
 int /*<<< orphan*/  FUNC3 (int,char const*,int /*<<< orphan*/ ) ; 

void
FUNC4(int pri, const char *fmt, va_list ap)
{

	FUNC0();
	FUNC2(syslog_cancel_cleanup, NULL);
	FUNC3(pri, fmt, ap);
	FUNC1(1);
}