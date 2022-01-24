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
 int /*<<< orphan*/  FUNC1 (char*) ; 

int
FUNC2()
{
	FUNC0("**\n** Testing linename functions\n**\n");
	FUNC1("/dev/pts/1");
	FUNC1("pts/1");
	FUNC1("pts/999");
	FUNC1("/dev/ttyp00");
	FUNC1("ttyp00");

	return 1;
}