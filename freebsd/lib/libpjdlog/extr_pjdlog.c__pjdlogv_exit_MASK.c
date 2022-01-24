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
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 scalar_t__ PJDLOG_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ pjdlog_initialized ; 

void
FUNC3(const char *func, const char *file, int line, int exitcode,
    int error, const char *fmt, va_list ap)
{

	FUNC1(pjdlog_initialized == PJDLOG_INITIALIZED);

	FUNC0(func, file, line, exitcode == 0 ? LOG_INFO : LOG_ERR, 0,
	    error, fmt, ap);
	FUNC2(exitcode);
	/* NOTREACHED */
}