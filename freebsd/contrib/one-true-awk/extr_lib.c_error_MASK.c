#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int lineno; } ;
typedef  TYPE_1__ Node ;

/* Variables and functions */
 char** FILENAME ; 
 scalar_t__* FNR ; 
 scalar_t__* NR ; 
 int compile_time ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int lineno ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char*,char*) ; 

void FUNC4()
{
	extern Node *curnode;

	FUNC2(stderr, "\n");
	if (compile_time != 2 && NR && *NR > 0) {
		FUNC2(stderr, " input record number %d", (int) (*FNR));
		if (FUNC3(*FILENAME, "-") != 0)
			FUNC2(stderr, ", file %s", *FILENAME);
		FUNC2(stderr, "\n");
	}
	if (compile_time != 2 && curnode)
		FUNC2(stderr, " source line number %d", curnode->lineno);
	else if (compile_time != 2 && lineno)
		FUNC2(stderr, " source line number %d", lineno);
	if (compile_time == 1 && FUNC0() != NULL)
		FUNC2(stderr, " source file %s", FUNC0());
	FUNC2(stderr, "\n");
	FUNC1();
}