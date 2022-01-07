
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_11__ {unsigned char* data; int length; } ;
struct TYPE_10__ {int p; int * priv_key; int g; int * pub_key; } ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef int EVP_PKEY ;
typedef TYPE_1__ DSA ;
typedef int BN_CTX ;
typedef TYPE_2__ ASN1_STRING ;
typedef TYPE_3__ ASN1_INTEGER ;


 int ASN1_INTEGER_to_BN (TYPE_3__*,int *) ;
 int ASN1_STRING_clear_free (TYPE_3__*) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_FLG_CONSTTIME ;
 int BN_mod_exp (int *,int ,int *,int ,int *) ;
 int * BN_new () ;
 int * BN_secure_new () ;
 int BN_set_flags (int *,int ) ;
 int DSA_F_DSA_PRIV_DECODE ;
 int DSA_R_BN_ERROR ;
 int DSA_R_DECODE_ERROR ;
 int DSA_free (TYPE_1__*) ;
 int DSAerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_assign_DSA (int *,TYPE_1__*) ;
 int PKCS8_pkey_get0 (int *,unsigned char const**,int*,int const**,int const*) ;
 scalar_t__ V_ASN1_NEG_INTEGER ;
 int V_ASN1_SEQUENCE ;
 int X509_ALGOR_get0 (int *,int*,void const**,int const*) ;
 TYPE_3__* d2i_ASN1_INTEGER (int *,unsigned char const**,int) ;
 TYPE_1__* d2i_DSAparams (int *,unsigned char const**,int) ;

__attribute__((used)) static int dsa_priv_decode(EVP_PKEY *pkey, const PKCS8_PRIV_KEY_INFO *p8)
{
    const unsigned char *p, *pm;
    int pklen, pmlen;
    int ptype;
    const void *pval;
    const ASN1_STRING *pstr;
    const X509_ALGOR *palg;
    ASN1_INTEGER *privkey = ((void*)0);
    BN_CTX *ctx = ((void*)0);

    DSA *dsa = ((void*)0);

    int ret = 0;

    if (!PKCS8_pkey_get0(((void*)0), &p, &pklen, &palg, p8))
        return 0;
    X509_ALGOR_get0(((void*)0), &ptype, &pval, palg);

    if ((privkey = d2i_ASN1_INTEGER(((void*)0), &p, pklen)) == ((void*)0))
        goto decerr;
    if (privkey->type == V_ASN1_NEG_INTEGER || ptype != V_ASN1_SEQUENCE)
        goto decerr;

    pstr = pval;
    pm = pstr->data;
    pmlen = pstr->length;
    if ((dsa = d2i_DSAparams(((void*)0), &pm, pmlen)) == ((void*)0))
        goto decerr;

    if ((dsa->priv_key = BN_secure_new()) == ((void*)0)
        || !ASN1_INTEGER_to_BN(privkey, dsa->priv_key)) {
        DSAerr(DSA_F_DSA_PRIV_DECODE, DSA_R_BN_ERROR);
        goto dsaerr;
    }

    if ((dsa->pub_key = BN_new()) == ((void*)0)) {
        DSAerr(DSA_F_DSA_PRIV_DECODE, ERR_R_MALLOC_FAILURE);
        goto dsaerr;
    }
    if ((ctx = BN_CTX_new()) == ((void*)0)) {
        DSAerr(DSA_F_DSA_PRIV_DECODE, ERR_R_MALLOC_FAILURE);
        goto dsaerr;
    }

    BN_set_flags(dsa->priv_key, BN_FLG_CONSTTIME);
    if (!BN_mod_exp(dsa->pub_key, dsa->g, dsa->priv_key, dsa->p, ctx)) {
        DSAerr(DSA_F_DSA_PRIV_DECODE, DSA_R_BN_ERROR);
        goto dsaerr;
    }

    EVP_PKEY_assign_DSA(pkey, dsa);

    ret = 1;
    goto done;

 decerr:
    DSAerr(DSA_F_DSA_PRIV_DECODE, DSA_R_DECODE_ERROR);
 dsaerr:
    DSA_free(dsa);
 done:
    BN_CTX_free(ctx);
    ASN1_STRING_clear_free(privkey);
    return ret;
}
