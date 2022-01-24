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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ autoboot_tried ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

void
FUNC3()
{
	char	*cp;

	cp = FUNC1("autoboot_delay");
	if ((autoboot_tried == 0) && ((cp == NULL) || FUNC2(cp, "NO")))
		FUNC0(-1, NULL);		/* try to boot automatically */
}