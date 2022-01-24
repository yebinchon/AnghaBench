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
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void
FUNC3(void)
{
	FUNC2("TEST_PROGNAME2"); //this name is consistent through the entire program unless changed
	FUNC1("testLogfile.log");
	//open_logfile("/var/log/syslog"); //this gives me "Permission Denied" when i do %m

	FUNC0(LOG_ERR, "Cannot open log file %s","abcXX");
	//cleanup_log(); //unnecessary  after log.c fix!

	return;
}