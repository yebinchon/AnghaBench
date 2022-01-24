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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 long FAIL ; 
 long GOOD ; 
 int LEAF ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dumpmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ hflag ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 

long
FUNC3(char *name, ino_t ino, int type)
{
	long descend = hflag ? GOOD : FAIL;

	if (FUNC0(ino, dumpmap) == 0)
		return (descend);
	FUNC2(stdout, "%s", type == LEAF ? "leaf" : "dir ");
	FUNC1(stdout, "%10jd\t%s\n", (uintmax_t)ino, name);
	return (descend);
}