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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/ ** KeyMacro ; 
 int MAXMACROLEVELS ; 
 int MacroLvl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(Char *str)
{
    if (str != NULL && MacroLvl + 1 < MAXMACROLEVELS) {
	MacroLvl++;
	KeyMacro[MacroLvl] = str;
    }
    else {
	FUNC0();
	FUNC1();
    }
}