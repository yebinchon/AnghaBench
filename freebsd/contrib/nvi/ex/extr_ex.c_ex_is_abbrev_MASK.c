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
typedef  int /*<<< orphan*/  EXCMDLIST ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 size_t C_ABBR ; 
 size_t C_UNABBREVIATE ; 
 int const* cmds ; 
 int* FUNC0 (int /*<<< orphan*/ *,size_t) ; 

int
FUNC1(CHAR_T *name, size_t len)
{
	EXCMDLIST const *cp;

	return ((cp = FUNC0(name, len)) != NULL &&
	    (cp == &cmds[C_ABBR] || cp == &cmds[C_UNABBREVIATE]));
}