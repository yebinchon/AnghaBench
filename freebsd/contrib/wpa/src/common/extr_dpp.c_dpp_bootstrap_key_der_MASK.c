#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wpabuf {int dummy; } ;
struct TYPE_7__ {TYPE_1__* pub_key; int /*<<< orphan*/  alg; } ;
struct TYPE_6__ {unsigned char* data; size_t length; int flags; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  TYPE_2__ DPP_BOOTSTRAPPING_KEY ;
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 int ASN1_STRING_FLAG_BITS_LEFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 int EVP_PKEY_EC ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*) ; 
 unsigned char* FUNC12 (size_t) ; 
 int /*<<< orphan*/  POINT_CONVERSION_COMPRESSED ; 
 int /*<<< orphan*/  V_ASN1_OBJECT ; 
 int FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC15 (TYPE_2__*,unsigned char**) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC17 (unsigned char*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC18(EVP_PKEY *key)
{
	unsigned char *der = NULL;
	int der_len;
	EC_KEY *eckey;
	struct wpabuf *ret = NULL;
	size_t len;
	const EC_GROUP *group;
	const EC_POINT *point;
	BN_CTX *ctx;
	DPP_BOOTSTRAPPING_KEY *bootstrap = NULL;
	int nid;

	ctx = FUNC1();
	eckey = FUNC9(key);
	if (!ctx || !eckey)
		goto fail;

	group = FUNC6(eckey);
	point = FUNC7(eckey);
	if (!group || !point)
		goto fail;
	FUNC14("DPP: bootstrap public key", group, point);
	nid = FUNC4(group);

	bootstrap = FUNC3();
	if (!bootstrap ||
	    FUNC13(bootstrap->alg, FUNC10(EVP_PKEY_EC),
			    V_ASN1_OBJECT, (void *) FUNC10(nid)) != 1)
		goto fail;

	len = FUNC8(group, point, POINT_CONVERSION_COMPRESSED,
				 NULL, 0, ctx);
	if (len == 0)
		goto fail;

	der = FUNC12(len);
	if (!der)
		goto fail;
	len = FUNC8(group, point, POINT_CONVERSION_COMPRESSED,
				 der, len, ctx);

	FUNC11(bootstrap->pub_key->data);
	bootstrap->pub_key->data = der;
	der = NULL;
	bootstrap->pub_key->length = len;
	/* No unused bits */
	bootstrap->pub_key->flags &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);
	bootstrap->pub_key->flags |= ASN1_STRING_FLAG_BITS_LEFT;

	der_len = FUNC15(bootstrap, &der);
	if (der_len <= 0) {
		FUNC16(MSG_ERROR,
			   "DDP: Failed to build DER encoded public key");
		goto fail;
	}

	ret = FUNC17(der, der_len);
fail:
	FUNC2(bootstrap);
	FUNC11(der);
	FUNC5(eckey);
	FUNC0(ctx);
	return ret;
}