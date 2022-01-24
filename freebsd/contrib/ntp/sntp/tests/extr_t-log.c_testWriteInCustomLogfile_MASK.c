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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,char*) ; 

void
FUNC10(void)
{
	char testString[256] = "12345 ABC";
	char testName[256] = "TEST_PROGNAME3";

	(void)FUNC7("testLogfile2.log");

	FUNC8(testName);
	FUNC5("testLogfile2.log"); // ./ causing issues
	//sntp_init_logging(testName);


	FUNC4(LOG_ERR, "%s", testString);
	FILE * f = FUNC3("testLogfile2.log","r");
	char line[256];

	FUNC0( f != NULL);

	//should be only 1 line
	while (FUNC2(line, sizeof(line), f)) {
		FUNC6("%s", line);
	}


	char* x = FUNC9(line,testName);

	FUNC0( x != NULL);

	x = FUNC9(line,testString);
	FUNC0( x != NULL);
	//cleanup_log();
	FUNC1(f); //using this will also cause segfault, because at the end, log.c will  call (using atexit(func) function) cleanup_log(void)-> fclose(syslog_file);
	//After the 1st fclose, syslog_file = NULL, and is never reset -> hopefully fixed by editing log.c
	//TEST_ASSERT_EQUAL_STRING(testString,line); //doesn't work, line is dynamic because the process name is random.

	return;
}