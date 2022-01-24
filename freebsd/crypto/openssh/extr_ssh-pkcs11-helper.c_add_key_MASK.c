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
struct sshkey {int dummy; } ;
struct pkcs11_keyinfo {struct sshkey* key; int /*<<< orphan*/  providername; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pkcs11_keyinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  pkcs11_keylist ; 
 struct pkcs11_keyinfo* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(struct sshkey *k, char *name)
{
	struct pkcs11_keyinfo *ki;

	ki = FUNC1(1, sizeof(*ki));
	ki->providername = FUNC2(name);
	ki->key = k;
	FUNC0(&pkcs11_keylist, ki, next);
}