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
typedef  scalar_t__ ufs2_daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIT ; 
 scalar_t__ bkgrdcheck ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,long) ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 

void
FUNC4(const char *mesg, ufs2_daddr_t blk)
{

	if (bkgrdcheck)
		FUNC0(EEXIT);
	if (preen == 0)
		FUNC2("\n");
	FUNC1("CANNOT %s: %ld", mesg, (long)blk);
	if (FUNC3("CONTINUE") == 0)
		FUNC0(EEXIT);
}