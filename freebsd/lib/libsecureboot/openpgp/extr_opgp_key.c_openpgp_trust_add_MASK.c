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
struct TYPE_4__ {char* id; } ;
typedef  TYPE_1__ OpenPGP_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  trust_list ; 
 scalar_t__ FUNC4 () ; 

void
FUNC5(OpenPGP_key *key)
{
	static int once = 0;

	if (!once) {
		once = 1;

		FUNC0(&trust_list);
	}
	if (key && FUNC2(key->id) == NULL) {
		if (FUNC4())
			FUNC3("openpgp_trust_add(%s)\n", key->id);
		FUNC1(&trust_list, key, entries);
	}
}