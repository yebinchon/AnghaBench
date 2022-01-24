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
struct types {int /*<<< orphan*/  t_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  ttyout ; 
 char* typename ; 
 struct types* types ; 

void
FUNC4(int argc, char *argv[])
{
	struct types *p;

	if (argc == 0 || argc > 2) {
		const char *sep;

		FUNC0("usage: %s [", argv[0]);
		sep = " ";
		for (p = types; p->t_name; p++) {
			FUNC1(ttyout, "%s%d", sep, p->t_name);
			sep = " | ";
		}
		FUNC2(" ]\n", ttyout);
		code = -1;
		return;
	}
	if (argc < 2) {
		FUNC1(ttyout, "Using %s mode to transfer files.\n", typename);
		code = 0;
		return;
	}
	FUNC3(argv[1]);
}