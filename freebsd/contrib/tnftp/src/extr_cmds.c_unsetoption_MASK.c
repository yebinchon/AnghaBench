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
struct option {char* name; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int code ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 struct option* FUNC3 (char*) ; 
 int /*<<< orphan*/  ttyout ; 

void
FUNC4(int argc, char *argv[])
{
	struct option *o;

	code = -1;
	if (argc == 0 || argc != 2) {
		FUNC1("usage: %s option\n", argv[0]);
		return;
	}

	o = FUNC3(argv[1]);
	if (o == NULL) {
		FUNC2(ttyout, "No such option `%s'.\n", argv[1]);
		return;
	}
	FUNC0(o->value);
	FUNC2(ttyout, "Unsetting `%s'.\n", o->name);
	code = 0;
}