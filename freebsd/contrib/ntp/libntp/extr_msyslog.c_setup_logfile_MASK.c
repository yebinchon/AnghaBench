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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 char const* syslog_fname ; 

void
FUNC2(
	const char *	name
	)
{
	if (NULL == syslog_fname && NULL != name) {
		if (-1 == FUNC0(name, TRUE))
			FUNC1(LOG_ERR, "Cannot open log file %s, %m",
				name);
		return ;
	} 
	if (NULL == syslog_fname)
		return;

	if (-1 == FUNC0(syslog_fname, FALSE))
		FUNC1(LOG_ERR, "Cannot reopen log file %s, %m",
			syslog_fname);
}