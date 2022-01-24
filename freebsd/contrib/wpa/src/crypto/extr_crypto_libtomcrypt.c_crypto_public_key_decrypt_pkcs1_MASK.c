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
typedef  int u8 ;
struct crypto_public_key {int /*<<< orphan*/  rsa; } ;

/* Variables and functions */
 int CRYPT_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  PK_PUBLIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,unsigned long) ; 
 int FUNC2 (int const*,size_t,int*,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC4(struct crypto_public_key *key,
				    const u8 *crypt, size_t crypt_len,
				    u8 *plain, size_t *plain_len)
{
	int res;
	unsigned long len;
	u8 *pos;

	len = *plain_len;
	res = FUNC2(crypt, crypt_len, plain, &len, PK_PUBLIC,
			  &key->rsa);
	if (res != CRYPT_OK) {
		FUNC3(MSG_DEBUG, "LibTomCrypt: rsa_exptmod failed: %s",
			   FUNC0(res));
		return -1;
	}

	/*
	 * PKCS #1 v1.5, 8.1:
	 *
	 * EB = 00 || BT || PS || 00 || D
	 * BT = 01
	 * PS = k-3-||D|| times FF
	 * k = length of modulus in octets
	 */

	if (len < 3 + 8 + 16 /* min hash len */ ||
	    plain[0] != 0x00 || plain[1] != 0x01 || plain[2] != 0xff) {
		FUNC3(MSG_INFO, "LibTomCrypt: Invalid signature EB "
			   "structure");
		return -1;
	}

	pos = plain + 3;
	while (pos < plain + len && *pos == 0xff)
		pos++;
	if (pos - plain - 2 < 8) {
		/* PKCS #1 v1.5, 8.1: At least eight octets long PS */
		FUNC3(MSG_INFO, "LibTomCrypt: Too short signature "
			   "padding");
		return -1;
	}

	if (pos + 16 /* min hash len */ >= plain + len || *pos != 0x00) {
		FUNC3(MSG_INFO, "LibTomCrypt: Invalid signature EB "
			   "structure (2)");
		return -1;
	}
	pos++;
	len -= pos - plain;

	/* Strip PKCS #1 header */
	FUNC1(plain, pos, len);
	*plain_len = len;

	return 0;
}