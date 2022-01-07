
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int priv_key; } ;
struct TYPE_11__ {scalar_t__ length; int type; int data; } ;
struct TYPE_9__ {TYPE_4__* dsa; } ;
struct TYPE_10__ {TYPE_1__ pkey; } ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_2__ EVP_PKEY ;
typedef TYPE_3__ ASN1_STRING ;
typedef int ASN1_INTEGER ;


 int ASN1_STRING_clear_free (int *) ;
 int ASN1_STRING_free (TYPE_3__*) ;
 TYPE_3__* ASN1_STRING_new () ;
 int * BN_to_ASN1_INTEGER (int ,int *) ;
 int DSA_F_DSA_PRIV_ENCODE ;
 int DSA_R_BN_ERROR ;
 int DSA_R_MISSING_PARAMETERS ;
 int DSAerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int NID_dsa ;
 int OBJ_nid2obj (int ) ;
 int OPENSSL_free (unsigned char*) ;
 int PKCS8_pkey_set0 (int *,int ,int ,int ,TYPE_3__*,unsigned char*,int) ;
 int V_ASN1_SEQUENCE ;
 int i2d_ASN1_INTEGER (int *,unsigned char**) ;
 scalar_t__ i2d_DSAparams (TYPE_4__*,int *) ;

__attribute__((used)) static int dsa_priv_encode(PKCS8_PRIV_KEY_INFO *p8, const EVP_PKEY *pkey)
{
    ASN1_STRING *params = ((void*)0);
    ASN1_INTEGER *prkey = ((void*)0);
    unsigned char *dp = ((void*)0);
    int dplen;

    if (!pkey->pkey.dsa || !pkey->pkey.dsa->priv_key) {
        DSAerr(DSA_F_DSA_PRIV_ENCODE, DSA_R_MISSING_PARAMETERS);
        goto err;
    }

    params = ASN1_STRING_new();

    if (params == ((void*)0)) {
        DSAerr(DSA_F_DSA_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    params->length = i2d_DSAparams(pkey->pkey.dsa, &params->data);
    if (params->length <= 0) {
        DSAerr(DSA_F_DSA_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    params->type = V_ASN1_SEQUENCE;


    prkey = BN_to_ASN1_INTEGER(pkey->pkey.dsa->priv_key, ((void*)0));

    if (!prkey) {
        DSAerr(DSA_F_DSA_PRIV_ENCODE, DSA_R_BN_ERROR);
        goto err;
    }

    dplen = i2d_ASN1_INTEGER(prkey, &dp);

    ASN1_STRING_clear_free(prkey);
    prkey = ((void*)0);

    if (!PKCS8_pkey_set0(p8, OBJ_nid2obj(NID_dsa), 0,
                         V_ASN1_SEQUENCE, params, dp, dplen))
        goto err;

    return 1;

 err:
    OPENSSL_free(dp);
    ASN1_STRING_free(params);
    ASN1_STRING_clear_free(prkey);
    return 0;
}
