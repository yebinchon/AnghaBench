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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {char** ps_argvstr; size_t ps_nargvstr; } ;

/* Variables and functions */
 size_t LEN ; 
 int /*<<< orphan*/  UINT_MAX ; 
 TYPE_1__* __ps_strings ; 
 char** FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,size_t) ; 
 char* FUNC5 (char*) ; 

int
FUNC6(void)
{
	size_t i;
	char buf[16];
	char **argv;

	if ((argv = FUNC0(LEN, sizeof(*argv))) == NULL)
		FUNC1(1, "calloc failed");
	for (i = 0; i < LEN; ++i) {
		FUNC4(buf, sizeof(buf), "arg%04zx", i);
		if ((argv[i] = FUNC5(buf)) == NULL)
			FUNC1(1, "strdup failed");
	}
	__ps_strings->ps_argvstr = argv;
	__ps_strings->ps_nargvstr = LEN;

	FUNC2("Sleeping forever...\n");
	do {
		FUNC3(UINT_MAX);
	} while /* CONSTCOND */ (1);
	return 0;
}