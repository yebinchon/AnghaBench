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
struct crypto_rsa_key {int private_key; struct bignum* iqmp; struct bignum* dmq1; struct bignum* dmp1; struct bignum* q; struct bignum* p; struct bignum* d; struct bignum* e; struct bignum* n; } ;
struct bignum {int dummy; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int length; int /*<<< orphan*/ * payload; } ;

/* Variables and functions */
 scalar_t__ ASN1_CLASS_UNIVERSAL ; 
 scalar_t__ ASN1_TAG_SEQUENCE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,size_t,struct asn1_hdr*) ; 
 scalar_t__ FUNC1 (struct bignum*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bignum*) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct crypto_rsa_key*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,struct bignum*) ; 
 struct crypto_rsa_key* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

struct crypto_rsa_key *
FUNC9(const u8 *buf, size_t len)
{
	struct crypto_rsa_key *key;
	struct bignum *zero;
	struct asn1_hdr hdr;
	const u8 *pos, *end;

	key = FUNC6(sizeof(*key));
	if (key == NULL)
		return NULL;

	key->private_key = 1;

	key->n = FUNC3();
	key->e = FUNC3();
	key->d = FUNC3();
	key->p = FUNC3();
	key->q = FUNC3();
	key->dmp1 = FUNC3();
	key->dmq1 = FUNC3();
	key->iqmp = FUNC3();

	if (key->n == NULL || key->e == NULL || key->d == NULL ||
	    key->p == NULL || key->q == NULL || key->dmp1 == NULL ||
	    key->dmq1 == NULL || key->iqmp == NULL) {
		FUNC4(key);
		return NULL;
	}

	/*
	 * PKCS #1, 7.2:
	 * RSAPrivateKey ::= SEQUENCE {
	 *    version Version,
	 *    modulus INTEGER, -- n
	 *    publicExponent INTEGER, -- e
	 *    privateExponent INTEGER, -- d
	 *    prime1 INTEGER, -- p
	 *    prime2 INTEGER, -- q
	 *    exponent1 INTEGER, -- d mod (p-1)
	 *    exponent2 INTEGER, -- d mod (q-1)
	 *    coefficient INTEGER -- (inverse of q) mod p
	 * }
	 *
	 * Version ::= INTEGER -- shall be 0 for this version of the standard
	 */
	if (FUNC0(buf, len, &hdr) < 0 ||
	    hdr.class != ASN1_CLASS_UNIVERSAL ||
	    hdr.tag != ASN1_TAG_SEQUENCE) {
		FUNC8(MSG_DEBUG, "RSA: Expected SEQUENCE "
			   "(public key) - found class %d tag 0x%x",
			   hdr.class, hdr.tag);
		goto error;
	}
	pos = hdr.payload;
	end = pos + hdr.length;

	zero = FUNC3();
	if (zero == NULL)
		goto error;
	pos = FUNC5(pos, end, zero);
	if (pos == NULL || FUNC1(zero, 0) != 0) {
		FUNC8(MSG_DEBUG, "RSA: Expected zero INTEGER in the "
			   "beginning of private key; not found");
		FUNC2(zero);
		goto error;
	}
	FUNC2(zero);

	pos = FUNC5(pos, end, key->n);
	pos = FUNC5(pos, end, key->e);
	pos = FUNC5(pos, end, key->d);
	pos = FUNC5(pos, end, key->p);
	pos = FUNC5(pos, end, key->q);
	pos = FUNC5(pos, end, key->dmp1);
	pos = FUNC5(pos, end, key->dmq1);
	pos = FUNC5(pos, end, key->iqmp);

	if (pos == NULL)
		goto error;

	if (pos != end) {
		FUNC7(MSG_DEBUG,
			    "RSA: Extra data in public key SEQUENCE",
			    pos, end - pos);
		goto error;
	}

	return key;

error:
	FUNC4(key);
	return NULL;
}