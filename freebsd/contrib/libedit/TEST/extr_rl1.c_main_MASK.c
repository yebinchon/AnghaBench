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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int history_length ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 char* FUNC2 (char*) ; 

int
FUNC3(int argc, char *argv[])
{
	char *p;
	while ((p = FUNC2("hi$")) != NULL) {
		FUNC0(p);
		FUNC1("%d %s\n", history_length, p);
	}
	return 0;
}