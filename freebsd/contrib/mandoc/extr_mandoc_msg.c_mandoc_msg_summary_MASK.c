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
 size_t MANDOCLEVEL_OK ; 
 int /*<<< orphan*/ * fileptr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 char* FUNC1 () ; 
 char** level_name ; 
 size_t rc ; 

void
FUNC2(void)
{
	if (fileptr != NULL && rc != MANDOCLEVEL_OK)
		FUNC0(fileptr,
		    "%s: see above the output for %s messages\n",
		    FUNC1(), level_name[rc]);
}