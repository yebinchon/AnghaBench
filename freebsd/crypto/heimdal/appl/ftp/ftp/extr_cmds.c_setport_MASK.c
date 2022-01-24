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
 int code ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int sendport ; 

void
FUNC2(int argc, char **argv)
{

	sendport = !sendport;
	FUNC1("Use of PORT cmds %s.\n", FUNC0(sendport));
	code = sendport;
}