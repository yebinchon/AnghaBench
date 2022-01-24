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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ guest ; 
 scalar_t__ FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

void
FUNC6(char *name)
{

	FUNC0("mkdir", name);
	if(guest && FUNC2(name))
	    return;
	if (FUNC3(name, 0777) < 0)
		FUNC4(550, name);
	else{
	    if(guest)
		FUNC1(name, 0700); /* guest has umask 777 */
	    FUNC5(257, "MKD command successful.");
	}
}