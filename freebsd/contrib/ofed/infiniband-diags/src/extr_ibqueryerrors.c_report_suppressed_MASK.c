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
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int sup_total ; 
 int /*<<< orphan*/ * suppressed_fields ; 

__attribute__((used)) static void FUNC2(void)
{
	int i = 0;
	FUNC1("## Suppressed:");
	for (i = 0; i < sup_total; i++)
		FUNC1(" %s", FUNC0(suppressed_fields[i]));
	FUNC1("\n");
}