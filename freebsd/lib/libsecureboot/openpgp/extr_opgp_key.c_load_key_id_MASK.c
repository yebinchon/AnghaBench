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
typedef  int /*<<< orphan*/  OpenPGP_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

OpenPGP_key *
FUNC3(const char *keyID)
{
	OpenPGP_key *key;

	key = FUNC2(keyID);
#ifndef _STANDALONE
	if (!key)
		key = FUNC1(keyID);
#endif
	FUNC0(2, ("load_key_id(%s): %s\n", keyID, key ? "found" : "nope"));
	return (key);
}