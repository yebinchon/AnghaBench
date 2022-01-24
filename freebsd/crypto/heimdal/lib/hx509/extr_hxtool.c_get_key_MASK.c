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
typedef  int /*<<< orphan*/  hx509_private_key ;
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 size_t FUNC9 (int /*<<< orphan*/ *,unsigned char**) ; 
 unsigned char* FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC12 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*,unsigned char*,size_t) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 

__attribute__((used)) static void
FUNC15(const char *fn, const char *type, int optbits,
	hx509_private_key *signer)
{
    int ret;

    if (type) {
	BIGNUM *e;
	RSA *rsa;
	unsigned char *p0, *p;
	size_t len;
	int bits = 1024;

	if (fn == NULL)
	    FUNC7(1, "no key argument, don't know here to store key");

	if (FUNC14(type, "rsa") != 0)
	    FUNC7(1, "can only handle rsa keys for now");

	e = FUNC1();
	FUNC2(e, 0x10001);

	if (optbits)
	    bits = optbits;

	rsa = FUNC5();
	if(rsa == NULL)
	    FUNC7(1, "RSA_new failed");

	ret = FUNC4(rsa, bits, e, NULL);
	if(ret != 1)
	    FUNC7(1, "RSA_new failed");

	FUNC0(e);

	len = FUNC9(rsa, NULL);

	p0 = p = FUNC10(len);
	if (p == NULL)
	    FUNC7(1, "out of memory");

	FUNC9(rsa, &p);

	FUNC13(fn, p0, len);
	FUNC11(p0, 0, len);
	FUNC8(p0);

	FUNC3(rsa);

    } else if (fn == NULL)
	FUNC6(1, "no private key");

    ret = FUNC12(fn, signer);
    if (ret)
	FUNC6(1, "read_private_key");
}