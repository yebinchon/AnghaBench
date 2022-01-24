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
struct pkcs11_keyinfo {int /*<<< orphan*/  key; struct pkcs11_keyinfo* providername; } ;

/* Variables and functions */
 struct pkcs11_keyinfo* FUNC0 (int /*<<< orphan*/ *) ; 
 struct pkcs11_keyinfo* FUNC1 (struct pkcs11_keyinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pkcs11_keyinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pkcs11_keyinfo*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  pkcs11_keylist ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pkcs11_keyinfo*,char*) ; 

__attribute__((used)) static void
FUNC6(char *name)
{
	struct pkcs11_keyinfo *ki, *nxt;

	for (ki = FUNC0(&pkcs11_keylist); ki; ki = nxt) {
		nxt = FUNC1(ki, next);
		if (!FUNC5(ki->providername, name)) {
			FUNC2(&pkcs11_keylist, ki, next);
			FUNC3(ki->providername);
			FUNC4(ki->key);
			FUNC3(ki);
		}
	}
}