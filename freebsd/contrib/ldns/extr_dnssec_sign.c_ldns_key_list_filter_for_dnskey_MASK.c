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
typedef  size_t ldns_signing_algorithm ;
typedef  int /*<<< orphan*/  ldns_key_list ;
typedef  int /*<<< orphan*/  ldns_key ;

/* Variables and functions */
 int LDNS_KEY_SEP_KEY ; 
 int LDNS_SIGN_WITH_ALL_ALGORITHMS ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(ldns_key_list *key_list, int flags)
{
	bool algos[256]
#ifndef S_SPLINT_S
	                = { false }
#endif
	                           ;
	ldns_signing_algorithm saw_ksk = 0;
	ldns_key *key;
	size_t i;

	if (!FUNC3(key_list))
		return;

	for (i = 0; i < FUNC3(key_list); i++) {
		key = FUNC2(key_list, i);
		if ((FUNC1(key) & LDNS_KEY_SEP_KEY) && !saw_ksk)
			saw_ksk = FUNC0(key);
		algos[FUNC0(key)] = true;
	}
	if (!saw_ksk)
		return;
	else
		algos[saw_ksk] = 0;

	for (i =0; i < FUNC3(key_list); i++) {
		key = FUNC2(key_list, i);
		if (!(FUNC1(key) & LDNS_KEY_SEP_KEY)) {
			/* We have a ZSK.
			 * Still use it if it has a unique algorithm though!
			 */
			if ((flags & LDNS_SIGN_WITH_ALL_ALGORITHMS) &&
			    algos[FUNC0(key)])
				algos[FUNC0(key)] = false;
			else
				FUNC4(key, 0);
		}
	}
}