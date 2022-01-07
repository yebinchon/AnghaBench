
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int X509_PUBKEY ;
struct TYPE_13__ {scalar_t__ length; int data; } ;
struct TYPE_12__ {int pub_key; scalar_t__ g; scalar_t__ q; scalar_t__ p; } ;
struct TYPE_10__ {TYPE_3__* dsa; } ;
struct TYPE_11__ {scalar_t__ save_parameters; TYPE_1__ pkey; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef TYPE_3__ DSA ;
typedef TYPE_4__ ASN1_STRING ;
typedef int ASN1_OBJECT ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_free (int *) ;
 int ASN1_STRING_free (TYPE_4__*) ;
 TYPE_4__* ASN1_STRING_new () ;
 int * BN_to_ASN1_INTEGER (int ,int *) ;
 int DSA_F_DSA_PUB_ENCODE ;
 int DSAerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_DSA ;
 int * OBJ_nid2obj (int ) ;
 int OPENSSL_free (unsigned char*) ;
 int V_ASN1_SEQUENCE ;
 int V_ASN1_UNDEF ;
 scalar_t__ X509_PUBKEY_set0_param (int *,int *,int,TYPE_4__*,unsigned char*,int) ;
 int i2d_ASN1_INTEGER (int *,unsigned char**) ;
 scalar_t__ i2d_DSAparams (TYPE_3__*,int *) ;

__attribute__((used)) static int dsa_pub_encode(X509_PUBKEY *pk, const EVP_PKEY *pkey)
{
    DSA *dsa;
    int ptype;
    unsigned char *penc = ((void*)0);
    int penclen;
    ASN1_STRING *str = ((void*)0);
    ASN1_INTEGER *pubint = ((void*)0);
    ASN1_OBJECT *aobj;

    dsa = pkey->pkey.dsa;
    if (pkey->save_parameters && dsa->p && dsa->q && dsa->g) {
        str = ASN1_STRING_new();
        if (str == ((void*)0)) {
            DSAerr(DSA_F_DSA_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        str->length = i2d_DSAparams(dsa, &str->data);
        if (str->length <= 0) {
            DSAerr(DSA_F_DSA_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        ptype = V_ASN1_SEQUENCE;
    } else
        ptype = V_ASN1_UNDEF;

    pubint = BN_to_ASN1_INTEGER(dsa->pub_key, ((void*)0));

    if (pubint == ((void*)0)) {
        DSAerr(DSA_F_DSA_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    penclen = i2d_ASN1_INTEGER(pubint, &penc);
    ASN1_INTEGER_free(pubint);

    if (penclen <= 0) {
        DSAerr(DSA_F_DSA_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    aobj = OBJ_nid2obj(EVP_PKEY_DSA);
    if (aobj == ((void*)0))
        goto err;

    if (X509_PUBKEY_set0_param(pk, aobj, ptype, str, penc, penclen))
        return 1;

 err:
    OPENSSL_free(penc);
    ASN1_STRING_free(str);

    return 0;
}
