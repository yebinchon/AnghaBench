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
 void* FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,void*) ; 
 void* msyslog_include_timestamp ; 
 int /*<<< orphan*/  msyslog_term ; 
 void* msyslog_term_pid ; 

void
FUNC1(
	const char *prog
	)
{
	
	msyslog_term = TRUE;
	FUNC0(prog, 0, FALSE);
	msyslog_term_pid = FALSE;
	msyslog_include_timestamp = FALSE;
}