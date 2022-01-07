
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int priv_key; } ;
struct TYPE_14__ {scalar_t__ length; int type; int data; } ;
struct TYPE_11__ {TYPE_6__* dh; } ;
struct TYPE_13__ {TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_12__ {int pkey_id; } ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_3__ EVP_PKEY ;
typedef TYPE_4__ ASN1_STRING ;
typedef int ASN1_INTEGER ;


 int ASN1_STRING_clear_free (int *) ;
 int ASN1_STRING_free (TYPE_4__*) ;
 TYPE_4__* ASN1_STRING_new () ;
 int * BN_to_ASN1_INTEGER (int ,int *) ;
 int DH_F_DH_PRIV_ENCODE ;
 int DH_R_BN_ERROR ;
 int DHerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OBJ_nid2obj (int ) ;
 int OPENSSL_free (unsigned char*) ;
 int PKCS8_pkey_set0 (int *,int ,int ,int ,TYPE_4__*,unsigned char*,int) ;
 int V_ASN1_SEQUENCE ;
 int i2d_ASN1_INTEGER (int *,unsigned char**) ;
 scalar_t__ i2d_dhp (TYPE_3__ const*,TYPE_6__*,int *) ;

__attribute__((used)) static int dh_priv_encode(PKCS8_PRIV_KEY_INFO *p8, const EVP_PKEY *pkey)
{
    ASN1_STRING *params = ((void*)0);
    ASN1_INTEGER *prkey = ((void*)0);
    unsigned char *dp = ((void*)0);
    int dplen;

    params = ASN1_STRING_new();

    if (params == ((void*)0)) {
        DHerr(DH_F_DH_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    params->length = i2d_dhp(pkey, pkey->pkey.dh, &params->data);
    if (params->length <= 0) {
        DHerr(DH_F_DH_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    params->type = V_ASN1_SEQUENCE;


    prkey = BN_to_ASN1_INTEGER(pkey->pkey.dh->priv_key, ((void*)0));

    if (!prkey) {
        DHerr(DH_F_DH_PRIV_ENCODE, DH_R_BN_ERROR);
        goto err;
    }

    dplen = i2d_ASN1_INTEGER(prkey, &dp);

    ASN1_STRING_clear_free(prkey);
    prkey = ((void*)0);

    if (!PKCS8_pkey_set0(p8, OBJ_nid2obj(pkey->ameth->pkey_id), 0,
                         V_ASN1_SEQUENCE, params, dp, dplen))
        goto err;

    return 1;

 err:
    OPENSSL_free(dp);
    ASN1_STRING_free(params);
    ASN1_STRING_clear_free(prkey);
    return 0;
}
