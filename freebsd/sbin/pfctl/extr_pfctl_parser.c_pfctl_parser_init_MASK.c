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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  isgroup_map ; 

__attribute__((used)) static __attribute__((constructor)) void
FUNC2(void)
{
	/*
	 * As hdestroy() will never be called on these tables, it will be
	 * safe to use references into the stored data as keys.
	 */
	if (FUNC1(0, &isgroup_map) == 0)
		FUNC0(1, "Failed to create interface group query response map");
}