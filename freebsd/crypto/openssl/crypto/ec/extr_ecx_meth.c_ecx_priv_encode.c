
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ flags; int length; int * data; } ;
struct TYPE_12__ {int * privkey; } ;
struct TYPE_9__ {TYPE_4__* ecx; } ;
struct TYPE_11__ {TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_10__ {int pkey_id; } ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_3__ EVP_PKEY ;
typedef TYPE_4__ ECX_KEY ;
typedef TYPE_5__ ASN1_OCTET_STRING ;


 int EC_F_ECX_PRIV_ENCODE ;
 int EC_R_INVALID_PRIVATE_KEY ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int KEYLEN (TYPE_3__ const*) ;
 int OBJ_nid2obj (int ) ;
 int OPENSSL_clear_free (unsigned char*,int) ;
 int PKCS8_pkey_set0 (int *,int ,int ,int ,int *,unsigned char*,int) ;
 int V_ASN1_UNDEF ;
 int i2d_ASN1_OCTET_STRING (TYPE_5__*,unsigned char**) ;

__attribute__((used)) static int ecx_priv_encode(PKCS8_PRIV_KEY_INFO *p8, const EVP_PKEY *pkey)
{
    const ECX_KEY *ecxkey = pkey->pkey.ecx;
    ASN1_OCTET_STRING oct;
    unsigned char *penc = ((void*)0);
    int penclen;

    if (ecxkey == ((void*)0) || ecxkey->privkey == ((void*)0)) {
        ECerr(EC_F_ECX_PRIV_ENCODE, EC_R_INVALID_PRIVATE_KEY);
        return 0;
    }

    oct.data = ecxkey->privkey;
    oct.length = KEYLEN(pkey);
    oct.flags = 0;

    penclen = i2d_ASN1_OCTET_STRING(&oct, &penc);
    if (penclen < 0) {
        ECerr(EC_F_ECX_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if (!PKCS8_pkey_set0(p8, OBJ_nid2obj(pkey->ameth->pkey_id), 0,
                         V_ASN1_UNDEF, ((void*)0), penc, penclen)) {
        OPENSSL_clear_free(penc, penclen);
        ECerr(EC_F_ECX_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    return 1;
}
