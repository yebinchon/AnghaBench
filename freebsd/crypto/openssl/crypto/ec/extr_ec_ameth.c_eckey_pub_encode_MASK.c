#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_PUBKEY ;
struct TYPE_4__ {int /*<<< orphan*/ * ec; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  EC_F_ECKEY_PUB_ENCODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  EVP_PKEY_EC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 (int) ; 
 int V_ASN1_OBJECT ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,void**,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char**) ; 

__attribute__((used)) static int FUNC9(X509_PUBKEY *pk, const EVP_PKEY *pkey)
{
    EC_KEY *ec_key = pkey->pkey.ec;
    void *pval = NULL;
    int ptype;
    unsigned char *penc = NULL, *p;
    int penclen;

    if (!FUNC7(&ptype, &pval, ec_key)) {
        FUNC2(EC_F_ECKEY_PUB_ENCODE, ERR_R_EC_LIB);
        return 0;
    }
    penclen = FUNC8(ec_key, NULL);
    if (penclen <= 0)
        goto err;
    penc = FUNC5(penclen);
    if (penc == NULL)
        goto err;
    p = penc;
    penclen = FUNC8(ec_key, &p);
    if (penclen <= 0)
        goto err;
    if (FUNC6(pk, FUNC3(EVP_PKEY_EC),
                               ptype, pval, penc, penclen))
        return 1;
 err:
    if (ptype == V_ASN1_OBJECT)
        FUNC0(pval);
    else
        FUNC1(pval);
    FUNC4(penc);
    return 0;
}