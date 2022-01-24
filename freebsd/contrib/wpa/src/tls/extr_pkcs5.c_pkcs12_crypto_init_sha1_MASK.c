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
typedef  int /*<<< orphan*/  u8 ;
struct pkcs5_params {scalar_t__ alg; int /*<<< orphan*/  iter_count; int /*<<< orphan*/  salt_len; int /*<<< orphan*/  salt; } ;
struct crypto_cipher {int dummy; } ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  iv ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_CIPHER_ALG_3DES ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  PKCS12_ID_ENC ; 
 int /*<<< orphan*/  PKCS12_ID_IV ; 
 scalar_t__ PKCS5_ALG_SHA1_3DES_CBC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const) ; 
 struct crypto_cipher* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 size_t FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct crypto_cipher *
FUNC7(struct pkcs5_params *params, const char *passwd)
{
	unsigned int i;
	u8 *pw;
	size_t pw_len;
	u8 key[24];
	u8 iv[8];

	if (params->alg != PKCS5_ALG_SHA1_3DES_CBC)
		return NULL;

	pw_len = passwd ? FUNC4(passwd) : 0;
	pw = FUNC3(2 * (pw_len + 1));
	if (!pw)
		return NULL;
	if (pw_len) {
		for (i = 0; i <= pw_len; i++)
			FUNC0(&pw[2 * i], passwd[i]);
		pw_len = 2 * (pw_len + 1);
	}

	if (FUNC5(pw, pw_len, params->salt, params->salt_len,
			   PKCS12_ID_ENC, params->iter_count,
			   sizeof(key), key) < 0 ||
	    FUNC5(pw, pw_len, params->salt, params->salt_len,
			   PKCS12_ID_IV, params->iter_count,
			   sizeof(iv), iv) < 0) {
		FUNC2(pw);
		return NULL;
	}

	FUNC2(pw);

	FUNC6(MSG_DEBUG, "PKCS #12: DES key", key, sizeof(key));
	FUNC6(MSG_DEBUG, "PKCS #12: DES IV", iv, sizeof(iv));

	return FUNC1(CRYPTO_CIPHER_ALG_3DES, iv, key, sizeof(key));
}