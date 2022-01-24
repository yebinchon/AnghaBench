#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  priv_key; } ;
struct TYPE_11__ {scalar_t__ length; int /*<<< orphan*/  type; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {TYPE_4__* dsa; } ;
struct TYPE_10__ {TYPE_1__ pkey; } ;
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  TYPE_3__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DSA_F_DSA_PRIV_ENCODE ; 
 int /*<<< orphan*/  DSA_R_BN_ERROR ; 
 int /*<<< orphan*/  DSA_R_MISSING_PARAMETERS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  NID_dsa ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,unsigned char*,int) ; 
 int /*<<< orphan*/  V_ASN1_SEQUENCE ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char**) ; 
 scalar_t__ FUNC9 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(PKCS8_PRIV_KEY_INFO *p8, const EVP_PKEY *pkey)
{
    ASN1_STRING *params = NULL;
    ASN1_INTEGER *prkey = NULL;
    unsigned char *dp = NULL;
    int dplen;

    if (!pkey->pkey.dsa || !pkey->pkey.dsa->priv_key) {
        FUNC4(DSA_F_DSA_PRIV_ENCODE, DSA_R_MISSING_PARAMETERS);
        goto err;
    }

    params = FUNC2();

    if (params == NULL) {
        FUNC4(DSA_F_DSA_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    params->length = FUNC9(pkey->pkey.dsa, &params->data);
    if (params->length <= 0) {
        FUNC4(DSA_F_DSA_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    params->type = V_ASN1_SEQUENCE;

    /* Get private key into integer */
    prkey = FUNC3(pkey->pkey.dsa->priv_key, NULL);

    if (!prkey) {
        FUNC4(DSA_F_DSA_PRIV_ENCODE, DSA_R_BN_ERROR);
        goto err;
    }

    dplen = FUNC8(prkey, &dp);

    FUNC0(prkey);
    prkey = NULL;

    if (!FUNC7(p8, FUNC5(NID_dsa), 0,
                         V_ASN1_SEQUENCE, params, dp, dplen))
        goto err;

    return 1;

 err:
    FUNC6(dp);
    FUNC1(params);
    FUNC0(prkey);
    return 0;
}