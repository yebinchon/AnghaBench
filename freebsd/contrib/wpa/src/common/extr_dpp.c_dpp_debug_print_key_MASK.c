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
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC12 (int /*<<< orphan*/ *,unsigned char**) ; 
 int FUNC13 (int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 char* FUNC15 (size_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,char const*,char*) ; 

__attribute__((used)) static void FUNC19(const char *title, EVP_PKEY *key)
{
	EC_KEY *eckey;
	BIO *out;
	size_t rlen;
	char *txt;
	int res;
	unsigned char *der = NULL;
	int der_len;
	const EC_GROUP *group;
	const EC_POINT *point;

	out = FUNC2(FUNC4());
	if (!out)
		return;

	FUNC9(out, key, 0, NULL);
	rlen = FUNC0(out);
	txt = FUNC15(rlen + 1);
	if (txt) {
		res = FUNC3(out, txt, rlen);
		if (res > 0) {
			txt[res] = '\0';
			FUNC18(MSG_DEBUG, "%s: %s", title, txt);
		}
		FUNC14(txt);
	}
	FUNC1(out);

	eckey = FUNC8(key);
	if (!eckey)
		return;

	group = FUNC6(eckey);
	point = FUNC7(eckey);
	if (group && point)
		FUNC11(title, group, point);

	der_len = FUNC12(eckey, &der);
	if (der_len > 0)
		FUNC17(MSG_DEBUG, "DPP: ECPrivateKey", der, der_len);
	FUNC10(der);
	if (der_len <= 0) {
		der = NULL;
		der_len = FUNC13(eckey, &der);
		if (der_len > 0)
			FUNC16(MSG_DEBUG, "DPP: EC_PUBKEY", der, der_len);
		FUNC10(der);
	}

	FUNC5(eckey);
}