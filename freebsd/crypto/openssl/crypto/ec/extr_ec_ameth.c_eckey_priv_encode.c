
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ec; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EC_KEY ;


 int EC_F_ECKEY_PRIV_ENCODE ;
 unsigned int EC_KEY_get_enc_flags (int *) ;
 int EC_KEY_set_enc_flags (int *,unsigned int) ;
 unsigned int EC_PKEY_NO_PARAMETERS ;
 int EC_R_DECODE_ERROR ;
 int ECerr (int ,int ) ;
 int ERR_R_EC_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int NID_X9_62_id_ecPublicKey ;
 int OBJ_nid2obj (int ) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int PKCS8_pkey_set0 (int *,int ,int ,int,void*,unsigned char*,int) ;
 int eckey_param2type (int*,void**,int *) ;
 int i2d_ECPrivateKey (int *,unsigned char**) ;

__attribute__((used)) static int eckey_priv_encode(PKCS8_PRIV_KEY_INFO *p8, const EVP_PKEY *pkey)
{
    EC_KEY ec_key = *(pkey->pkey.ec);
    unsigned char *ep, *p;
    int eplen, ptype;
    void *pval;
    unsigned int old_flags;

    if (!eckey_param2type(&ptype, &pval, &ec_key)) {
        ECerr(EC_F_ECKEY_PRIV_ENCODE, EC_R_DECODE_ERROR);
        return 0;
    }







    old_flags = EC_KEY_get_enc_flags(&ec_key);
    EC_KEY_set_enc_flags(&ec_key, old_flags | EC_PKEY_NO_PARAMETERS);

    eplen = i2d_ECPrivateKey(&ec_key, ((void*)0));
    if (!eplen) {
        ECerr(EC_F_ECKEY_PRIV_ENCODE, ERR_R_EC_LIB);
        return 0;
    }
    ep = OPENSSL_malloc(eplen);
    if (ep == ((void*)0)) {
        ECerr(EC_F_ECKEY_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    p = ep;
    if (!i2d_ECPrivateKey(&ec_key, &p)) {
        OPENSSL_free(ep);
        ECerr(EC_F_ECKEY_PRIV_ENCODE, ERR_R_EC_LIB);
        return 0;
    }

    if (!PKCS8_pkey_set0(p8, OBJ_nid2obj(NID_X9_62_id_ecPublicKey), 0,
                         ptype, pval, ep, eplen)) {
        OPENSSL_free(ep);
        return 0;
    }

    return 1;
}
