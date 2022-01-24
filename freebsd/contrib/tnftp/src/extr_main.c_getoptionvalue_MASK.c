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
struct option {char* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 struct option* FUNC1 (char const*) ; 

char *
FUNC2(const char *name)
{
	struct option *c;

	if (name == NULL)
		FUNC0(1, "getoptionvalue: invoked with NULL name");
	c = FUNC1(name);
	if (c != NULL)
		return (c->value);
	FUNC0(1, "getoptionvalue: invoked with unknown option `%s'", name);
	/* NOTREACHED */
}