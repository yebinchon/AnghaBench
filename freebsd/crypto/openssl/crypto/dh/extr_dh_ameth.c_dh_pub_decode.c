
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int X509_PUBKEY ;
typedef int X509_ALGOR ;
struct TYPE_14__ {unsigned char* data; int length; } ;
struct TYPE_13__ {int * pub_key; } ;
struct TYPE_12__ {TYPE_1__* ameth; } ;
struct TYPE_11__ {int pkey_id; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef TYPE_3__ DH ;
typedef TYPE_4__ ASN1_STRING ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_free (int *) ;
 int * ASN1_INTEGER_to_BN (int *,int *) ;
 int DH_F_DH_PUB_DECODE ;
 int DH_R_BN_DECODE_ERROR ;
 int DH_R_DECODE_ERROR ;
 int DH_R_PARAMETER_ENCODING_ERROR ;
 int DH_free (TYPE_3__*) ;
 int DHerr (int ,int ) ;
 int EVP_PKEY_assign (TYPE_2__*,int ,TYPE_3__*) ;
 int V_ASN1_SEQUENCE ;
 int X509_ALGOR_get0 (int *,int*,void const**,int *) ;
 int X509_PUBKEY_get0_param (int *,unsigned char const**,int*,int **,int *) ;
 int * d2i_ASN1_INTEGER (int *,unsigned char const**,int) ;
 TYPE_3__* d2i_dhp (TYPE_2__*,unsigned char const**,int) ;

__attribute__((used)) static int dh_pub_decode(EVP_PKEY *pkey, X509_PUBKEY *pubkey)
{
    const unsigned char *p, *pm;
    int pklen, pmlen;
    int ptype;
    const void *pval;
    const ASN1_STRING *pstr;
    X509_ALGOR *palg;
    ASN1_INTEGER *public_key = ((void*)0);

    DH *dh = ((void*)0);

    if (!X509_PUBKEY_get0_param(((void*)0), &p, &pklen, &palg, pubkey))
        return 0;
    X509_ALGOR_get0(((void*)0), &ptype, &pval, palg);

    if (ptype != V_ASN1_SEQUENCE) {
        DHerr(DH_F_DH_PUB_DECODE, DH_R_PARAMETER_ENCODING_ERROR);
        goto err;
    }

    pstr = pval;
    pm = pstr->data;
    pmlen = pstr->length;

    if ((dh = d2i_dhp(pkey, &pm, pmlen)) == ((void*)0)) {
        DHerr(DH_F_DH_PUB_DECODE, DH_R_DECODE_ERROR);
        goto err;
    }

    if ((public_key = d2i_ASN1_INTEGER(((void*)0), &p, pklen)) == ((void*)0)) {
        DHerr(DH_F_DH_PUB_DECODE, DH_R_DECODE_ERROR);
        goto err;
    }


    if ((dh->pub_key = ASN1_INTEGER_to_BN(public_key, ((void*)0))) == ((void*)0)) {
        DHerr(DH_F_DH_PUB_DECODE, DH_R_BN_DECODE_ERROR);
        goto err;
    }

    ASN1_INTEGER_free(public_key);
    EVP_PKEY_assign(pkey, pkey->ameth->pkey_id, dh);
    return 1;

 err:
    ASN1_INTEGER_free(public_key);
    DH_free(dh);
    return 0;

}
