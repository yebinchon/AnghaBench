
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int rsa; } ;
struct TYPE_8__ {TYPE_1__* ameth; TYPE_2__ pkey; } ;
struct TYPE_6__ {int pkey_id; } ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_3__ EVP_PKEY ;
typedef int ASN1_STRING ;


 int ASN1_STRING_free (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int OBJ_nid2obj (int ) ;
 int PKCS8_pkey_set0 (int *,int ,int ,int,int *,unsigned char*,int) ;
 int RSA_F_RSA_PRIV_ENCODE ;
 int RSAerr (int ,int ) ;
 int i2d_RSAPrivateKey (int ,unsigned char**) ;
 int rsa_param_encode (TYPE_3__ const*,int **,int*) ;

__attribute__((used)) static int rsa_priv_encode(PKCS8_PRIV_KEY_INFO *p8, const EVP_PKEY *pkey)
{
    unsigned char *rk = ((void*)0);
    int rklen;
    ASN1_STRING *str;
    int strtype;

    if (!rsa_param_encode(pkey, &str, &strtype))
        return 0;
    rklen = i2d_RSAPrivateKey(pkey->pkey.rsa, &rk);

    if (rklen <= 0) {
        RSAerr(RSA_F_RSA_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        ASN1_STRING_free(str);
        return 0;
    }

    if (!PKCS8_pkey_set0(p8, OBJ_nid2obj(pkey->ameth->pkey_id), 0,
                         strtype, str, rk, rklen)) {
        RSAerr(RSA_F_RSA_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        ASN1_STRING_free(str);
        return 0;
    }

    return 1;
}
