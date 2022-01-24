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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* modename ; 
 int /*<<< orphan*/  ttyout ; 

void
FUNC2(int argc, char *argv[])
{

	if (argc != 2) {
		FUNC0("usage: %s mode-name\n", argv[0]);
		code = -1;
		return;
	}
	FUNC1(ttyout, "We only support %s mode, sorry.\n", modename);
	code = -1;
}