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
 scalar_t__ first_title ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1(char *title)
{
	if (!first_title)
		FUNC0("\n");
	first_title = 0;
	FUNC0("%s\n", title);
}