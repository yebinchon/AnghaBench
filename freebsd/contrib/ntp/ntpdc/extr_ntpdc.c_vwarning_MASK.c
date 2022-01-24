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
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void __attribute__((__format__(__printf__, 1, 0)))
FUNC3(const char *fmt, va_list ap)
{
	int serrno = errno;
	(void) FUNC0(stderr, "%s: ", progname);
	FUNC2(stderr, fmt, ap);
	(void) FUNC0(stderr, ": %s\n", FUNC1(serrno));
}