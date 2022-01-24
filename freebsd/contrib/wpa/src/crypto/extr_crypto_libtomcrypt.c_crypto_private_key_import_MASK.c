#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct crypto_private_key {TYPE_1__ rsa; } ;

/* Variables and functions */
 int CRYPT_OK ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ PK_PRIVATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_private_key*) ; 
 struct crypto_private_key* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

struct crypto_private_key * FUNC6(const u8 *key,
						      size_t len,
						      const char *passwd)
{
	int res;
	struct crypto_private_key *pk;

	pk = FUNC2(sizeof(*pk));
	if (pk == NULL)
		return NULL;

	res = FUNC4(key, len, &pk->rsa);
	if (res != CRYPT_OK) {
		FUNC5(MSG_ERROR, "LibTomCrypt: Failed to import "
			   "private key (res=%d '%s')",
			   res, FUNC0(res));
		FUNC1(pk);
		return NULL;
	}

	if (pk->rsa.type != PK_PRIVATE) {
		FUNC5(MSG_ERROR, "LibTomCrypt: Private key was not of "
			   "correct type");
		FUNC3(&pk->rsa);
		FUNC1(pk);
		return NULL;
	}

	return pk;
}