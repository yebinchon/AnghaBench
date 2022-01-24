#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {int enc_flag; int /*<<< orphan*/  conv_form; int /*<<< orphan*/ * group; int /*<<< orphan*/  version; int /*<<< orphan*/ * pub_key; } ;
struct TYPE_11__ {TYPE_9__* publicKey; int /*<<< orphan*/ * parameters; TYPE_9__* privateKey; int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ EC_PRIVATEKEY ;
typedef  TYPE_2__ EC_KEY ;

/* Variables and functions */
 TYPE_9__* FUNC0 () ; 
 int ASN1_STRING_FLAG_BITS_LEFT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  EC_F_I2D_ECPRIVATEKEY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,unsigned char**,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (TYPE_2__*,unsigned char**) ; 
 int EC_PKEY_NO_PARAMETERS ; 
 int EC_PKEY_NO_PUBKEY ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 int FUNC10 (TYPE_1__*,unsigned char**) ; 

int FUNC11(EC_KEY *a, unsigned char **out)
{
    int ret = 0, ok = 0;
    unsigned char *priv= NULL, *pub= NULL;
    size_t privlen = 0, publen = 0;

    EC_PRIVATEKEY *priv_key = NULL;

    if (a == NULL || a->group == NULL ||
        (!(a->enc_flag & EC_PKEY_NO_PUBKEY) && a->pub_key == NULL)) {
        FUNC7(EC_F_I2D_ECPRIVATEKEY, ERR_R_PASSED_NULL_PARAMETER);
        goto err;
    }

    if ((priv_key = FUNC6()) == NULL) {
        FUNC7(EC_F_I2D_ECPRIVATEKEY, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    priv_key->version = a->version;

    privlen = FUNC4(a, &priv);

    if (privlen == 0) {
        FUNC7(EC_F_I2D_ECPRIVATEKEY, ERR_R_EC_LIB);
        goto err;
    }

    FUNC1(priv_key->privateKey, priv, privlen);
    priv = NULL;

    if (!(a->enc_flag & EC_PKEY_NO_PARAMETERS)) {
        if ((priv_key->parameters =
             FUNC2(a->group,
                                        priv_key->parameters)) == NULL) {
            FUNC7(EC_F_I2D_ECPRIVATEKEY, ERR_R_EC_LIB);
            goto err;
        }
    }

    if (!(a->enc_flag & EC_PKEY_NO_PUBKEY)) {
        priv_key->publicKey = FUNC0();
        if (priv_key->publicKey == NULL) {
            FUNC7(EC_F_I2D_ECPRIVATEKEY, ERR_R_MALLOC_FAILURE);
            goto err;
        }

        publen = FUNC3(a, a->conv_form, &pub, NULL);

        if (publen == 0) {
            FUNC7(EC_F_I2D_ECPRIVATEKEY, ERR_R_EC_LIB);
            goto err;
        }

        priv_key->publicKey->flags &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);
        priv_key->publicKey->flags |= ASN1_STRING_FLAG_BITS_LEFT;
        FUNC1(priv_key->publicKey, pub, publen);
        pub = NULL;
    }

    if ((ret = FUNC10(priv_key, out)) == 0) {
        FUNC7(EC_F_I2D_ECPRIVATEKEY, ERR_R_EC_LIB);
        goto err;
    }
    ok = 1;
 err:
    FUNC8(priv, privlen);
    FUNC9(pub);
    FUNC5(priv_key);
    return (ok ? ret : 0);
}