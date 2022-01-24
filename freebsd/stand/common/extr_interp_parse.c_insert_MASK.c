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
 int MAXARGS ; 
 int /*<<< orphan*/ * args ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static int
FUNC1(int *argcp, char *buf)
{

	if (*argcp >= MAXARGS)
		return 1;
	args[(*argcp)++] = FUNC0(buf);
	return 0;
}