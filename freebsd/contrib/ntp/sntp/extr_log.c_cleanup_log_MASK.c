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
 int /*<<< orphan*/  TRUE ; 
 int counter ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * syslog_file ; 
 int /*<<< orphan*/  syslogit ; 

__attribute__((used)) static void
FUNC2(void)
{
	//counter--;
	//if(counter <= 0){
	if(counter == 1){
		syslogit = TRUE;
		FUNC1(syslog_file);
		FUNC0(syslog_file);
		syslog_file = NULL;
		counter = 0;
	}
}