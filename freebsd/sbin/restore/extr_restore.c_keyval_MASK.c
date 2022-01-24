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
 int INOFND ; 
 int MODECHG ; 
 int NAMEFND ; 
 int ONTAPE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static char *
FUNC2(int key)
{
	static char keybuf[32];

	(void) FUNC1(keybuf, "|NIL");
	keybuf[0] = '\0';
	if (key & ONTAPE)
		(void) FUNC0(keybuf, "|ONTAPE");
	if (key & INOFND)
		(void) FUNC0(keybuf, "|INOFND");
	if (key & NAMEFND)
		(void) FUNC0(keybuf, "|NAMEFND");
	if (key & MODECHG)
		(void) FUNC0(keybuf, "|MODECHG");
	return (&keybuf[1]);
}