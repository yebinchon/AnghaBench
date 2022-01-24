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
struct option {char* value; char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* FUNC2 (char const*) ; 
 struct option* FUNC3 (char const*) ; 
 int /*<<< orphan*/  ttyout ; 
 scalar_t__ verbose ; 

void
FUNC4(const char * option, const char * value, int doverbose)
{
	struct option *o;

	o = FUNC3(option);
	if (o == NULL) {
		FUNC1(ttyout, "No such option `%s'.\n", option);
		return;
	}
	FUNC0(o->value);
	o->value = FUNC2(value);
	if (verbose && doverbose)
		FUNC1(ttyout, "Setting `%s' to `%s'.\n",
		    o->name, o->value);
}