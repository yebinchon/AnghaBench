#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_1__ Authmethod ;

/* Variables and functions */
 TYPE_1__* authmethods ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Authmethod *
FUNC2(const char *name)
{
	Authmethod *method = NULL;
	if (name != NULL)
		for (method = authmethods; method->name != NULL; method++)
			if (FUNC1(name, method->name) == 0)
				return method;
	FUNC0("Unrecognized authentication method name: %s", name ? name : "NULL");
	return NULL;
}