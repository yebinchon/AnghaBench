#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* name; int kind; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ Akind ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ dalign ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC4 () ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * stdout ; 

int
FUNC7()
{
	Akind *a = 0;
	int Ldef = 0;
	FILE *f;

#ifdef WRITE_ARITH_H	/* for Symantec's buggy "make" */
	f = fopen("arith.h", "w");
	if (!f) {
		printf("Cannot open arith.h\n");
		return 1;
		}
#else
	f = stdout;
#endif

	if (sizeof(double) == 2*sizeof(long))
		a = FUNC0();
	else if (sizeof(double) == 2*sizeof(int)) {
		Ldef = 1;
		a = FUNC5();
		}
	else if (sizeof(double) == sizeof(long))
		a = FUNC1();
	if (a) {
		FUNC3(f, "#define %s\n#define Arith_Kind_ASL %d\n",
			a->name, a->kind);
		if (Ldef)
			FUNC3(f, "#define Long int\n#define Intcast (int)(long)\n");
		if (dalign)
			FUNC3(f, "#define Double_Align\n");
		if (sizeof(char*) == 8)
			FUNC3(f, "#define X64_bit_pointers\n");
#ifndef NO_LONG_LONG
		if (sizeof(long long) < 8)
#endif
			FUNC3(f, "#define NO_LONG_LONG\n");
		if (a->kind <= 2 && FUNC4())
			FUNC3(f, "#define Sudden_Underflow\n");
		return 0;
		}
	FUNC3(f, "/* Unknown arithmetic */\n");
	return 1;
	}