
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int flags; } ;
struct TYPE_12__ {int enc_flag; int conv_form; int * group; int version; int * pub_key; } ;
struct TYPE_11__ {TYPE_9__* publicKey; int * parameters; TYPE_9__* privateKey; int version; } ;
typedef TYPE_1__ EC_PRIVATEKEY ;
typedef TYPE_2__ EC_KEY ;


 TYPE_9__* ASN1_BIT_STRING_new () ;
 int ASN1_STRING_FLAG_BITS_LEFT ;
 int ASN1_STRING_set0 (TYPE_9__*,unsigned char*,size_t) ;
 int EC_F_I2D_ECPRIVATEKEY ;
 int * EC_GROUP_get_ecpkparameters (int *,int *) ;
 size_t EC_KEY_key2buf (TYPE_2__*,int ,unsigned char**,int *) ;
 size_t EC_KEY_priv2buf (TYPE_2__*,unsigned char**) ;
 int EC_PKEY_NO_PARAMETERS ;
 int EC_PKEY_NO_PUBKEY ;
 int EC_PRIVATEKEY_free (TYPE_1__*) ;
 TYPE_1__* EC_PRIVATEKEY_new () ;
 int ECerr (int ,int ) ;
 int ERR_R_EC_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 int OPENSSL_free (unsigned char*) ;
 int i2d_EC_PRIVATEKEY (TYPE_1__*,unsigned char**) ;

int i2d_ECPrivateKey(EC_KEY *a, unsigned char **out)
{
    int ret = 0, ok = 0;
    unsigned char *priv= ((void*)0), *pub= ((void*)0);
    size_t privlen = 0, publen = 0;

    EC_PRIVATEKEY *priv_key = ((void*)0);

    if (a == ((void*)0) || a->group == ((void*)0) ||
        (!(a->enc_flag & EC_PKEY_NO_PUBKEY) && a->pub_key == ((void*)0))) {
        ECerr(EC_F_I2D_ECPRIVATEKEY, ERR_R_PASSED_NULL_PARAMETER);
        goto err;
    }

    if ((priv_key = EC_PRIVATEKEY_new()) == ((void*)0)) {
        ECerr(EC_F_I2D_ECPRIVATEKEY, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    priv_key->version = a->version;

    privlen = EC_KEY_priv2buf(a, &priv);

    if (privlen == 0) {
        ECerr(EC_F_I2D_ECPRIVATEKEY, ERR_R_EC_LIB);
        goto err;
    }

    ASN1_STRING_set0(priv_key->privateKey, priv, privlen);
    priv = ((void*)0);

    if (!(a->enc_flag & EC_PKEY_NO_PARAMETERS)) {
        if ((priv_key->parameters =
             EC_GROUP_get_ecpkparameters(a->group,
                                        priv_key->parameters)) == ((void*)0)) {
            ECerr(EC_F_I2D_ECPRIVATEKEY, ERR_R_EC_LIB);
            goto err;
        }
    }

    if (!(a->enc_flag & EC_PKEY_NO_PUBKEY)) {
        priv_key->publicKey = ASN1_BIT_STRING_new();
        if (priv_key->publicKey == ((void*)0)) {
            ECerr(EC_F_I2D_ECPRIVATEKEY, ERR_R_MALLOC_FAILURE);
            goto err;
        }

        publen = EC_KEY_key2buf(a, a->conv_form, &pub, ((void*)0));

        if (publen == 0) {
            ECerr(EC_F_I2D_ECPRIVATEKEY, ERR_R_EC_LIB);
            goto err;
        }

        priv_key->publicKey->flags &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);
        priv_key->publicKey->flags |= ASN1_STRING_FLAG_BITS_LEFT;
        ASN1_STRING_set0(priv_key->publicKey, pub, publen);
        pub = ((void*)0);
    }

    if ((ret = i2d_EC_PRIVATEKEY(priv_key, out)) == 0) {
        ECerr(EC_F_I2D_ECPRIVATEKEY, ERR_R_EC_LIB);
        goto err;
    }
    ok = 1;
 err:
    OPENSSL_clear_free(priv, privlen);
    OPENSSL_free(pub);
    EC_PRIVATEKEY_free(priv_key);
    return (ok ? ret : 0);
}
