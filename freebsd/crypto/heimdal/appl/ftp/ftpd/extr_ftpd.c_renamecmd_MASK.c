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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ guest ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

void
FUNC5(char *from, char *to)
{

	FUNC0("rename", from, to);
	if(guest && FUNC2(to))
	    return;
	if (FUNC4(from, to) < 0)
		FUNC3(550, "rename");
	else
		FUNC1("RNTO");
}