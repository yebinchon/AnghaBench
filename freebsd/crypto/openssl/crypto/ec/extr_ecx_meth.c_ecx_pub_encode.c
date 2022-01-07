
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int X509_PUBKEY ;
struct TYPE_10__ {int pubkey; } ;
struct TYPE_7__ {TYPE_4__* ecx; } ;
struct TYPE_9__ {TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_8__ {int pkey_id; } ;
typedef TYPE_3__ EVP_PKEY ;
typedef TYPE_4__ ECX_KEY ;


 int EC_F_ECX_PUB_ENCODE ;
 int EC_R_INVALID_KEY ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int KEYLEN (TYPE_3__ const*) ;
 int OBJ_nid2obj (int ) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_memdup (int ,int ) ;
 int V_ASN1_UNDEF ;
 int X509_PUBKEY_set0_param (int *,int ,int ,int *,unsigned char*,int ) ;

__attribute__((used)) static int ecx_pub_encode(X509_PUBKEY *pk, const EVP_PKEY *pkey)
{
    const ECX_KEY *ecxkey = pkey->pkey.ecx;
    unsigned char *penc;

    if (ecxkey == ((void*)0)) {
        ECerr(EC_F_ECX_PUB_ENCODE, EC_R_INVALID_KEY);
        return 0;
    }

    penc = OPENSSL_memdup(ecxkey->pubkey, KEYLEN(pkey));
    if (penc == ((void*)0)) {
        ECerr(EC_F_ECX_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if (!X509_PUBKEY_set0_param(pk, OBJ_nid2obj(pkey->ameth->pkey_id),
                                V_ASN1_UNDEF, ((void*)0), penc, KEYLEN(pkey))) {
        OPENSSL_free(penc);
        ECerr(EC_F_ECX_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    return 1;
}
