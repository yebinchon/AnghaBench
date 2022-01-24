#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_8__ {int /*<<< orphan*/  ec; } ;
struct TYPE_9__ {TYPE_1__ pkey; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_2__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ NID_X9_62_id_ecPublicKey ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 int V_ASN1_NULL ; 
 int V_ASN1_UNDEF ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const**,int*,void const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int,void const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,unsigned char const**,int) ; 

__attribute__((used)) static int FUNC15(EVP_PKEY_CTX *pctx,
                                X509_ALGOR *alg, ASN1_BIT_STRING *pubkey)
{
    const ASN1_OBJECT *aoid;
    int atype;
    const void *aval;
    int rv = 0;
    EVP_PKEY *pkpeer = NULL;
    EC_KEY *ecpeer = NULL;
    const unsigned char *p;
    int plen;
    FUNC12(&aoid, &atype, &aval, alg);
    if (FUNC11(aoid) != NID_X9_62_id_ecPublicKey)
        goto err;
    /* If absent parameters get group from main key */
    if (atype == V_ASN1_UNDEF || atype == V_ASN1_NULL) {
        const EC_GROUP *grp;
        EVP_PKEY *pk;
        pk = FUNC6(pctx);
        if (!pk)
            goto err;
        grp = FUNC3(pk->pkey.ec);
        ecpeer = FUNC4();
        if (ecpeer == NULL)
            goto err;
        if (!FUNC5(ecpeer, grp))
            goto err;
    } else {
        ecpeer = FUNC13(atype, aval);
        if (!ecpeer)
            goto err;
    }
    /* We have parameters now set public key */
    plen = FUNC1(pubkey);
    p = FUNC0(pubkey);
    if (!p || !plen)
        goto err;
    if (!FUNC14(&ecpeer, &p, plen))
        goto err;
    pkpeer = FUNC9();
    if (pkpeer == NULL)
        goto err;
    FUNC10(pkpeer, ecpeer);
    if (FUNC7(pctx, pkpeer) > 0)
        rv = 1;
 err:
    FUNC2(ecpeer);
    FUNC8(pkpeer);
    return rv;
}