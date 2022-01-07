
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_15__ {unsigned char* data; int length; } ;
struct TYPE_14__ {int * priv_key; } ;
struct TYPE_13__ {TYPE_1__* ameth; } ;
struct TYPE_12__ {int pkey_id; } ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_2__ EVP_PKEY ;
typedef TYPE_3__ DH ;
typedef TYPE_4__ ASN1_STRING ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_to_BN (int *,int *) ;
 int ASN1_STRING_clear_free (int *) ;
 int * BN_secure_new () ;
 int DH_F_DH_PRIV_DECODE ;
 int DH_R_BN_ERROR ;
 int DH_free (TYPE_3__*) ;
 int DH_generate_key (TYPE_3__*) ;
 int DHerr (int ,int ) ;
 int EVP_PKEY_assign (TYPE_2__*,int ,TYPE_3__*) ;
 int EVP_R_DECODE_ERROR ;
 int PKCS8_pkey_get0 (int *,unsigned char const**,int*,int const**,int const*) ;
 int V_ASN1_SEQUENCE ;
 int X509_ALGOR_get0 (int *,int*,void const**,int const*) ;
 int * d2i_ASN1_INTEGER (int *,unsigned char const**,int) ;
 TYPE_3__* d2i_dhp (TYPE_2__*,unsigned char const**,int) ;

__attribute__((used)) static int dh_priv_decode(EVP_PKEY *pkey, const PKCS8_PRIV_KEY_INFO *p8)
{
    const unsigned char *p, *pm;
    int pklen, pmlen;
    int ptype;
    const void *pval;
    const ASN1_STRING *pstr;
    const X509_ALGOR *palg;
    ASN1_INTEGER *privkey = ((void*)0);

    DH *dh = ((void*)0);

    if (!PKCS8_pkey_get0(((void*)0), &p, &pklen, &palg, p8))
        return 0;

    X509_ALGOR_get0(((void*)0), &ptype, &pval, palg);

    if (ptype != V_ASN1_SEQUENCE)
        goto decerr;
    if ((privkey = d2i_ASN1_INTEGER(((void*)0), &p, pklen)) == ((void*)0))
        goto decerr;

    pstr = pval;
    pm = pstr->data;
    pmlen = pstr->length;
    if ((dh = d2i_dhp(pkey, &pm, pmlen)) == ((void*)0))
        goto decerr;


    if ((dh->priv_key = BN_secure_new()) == ((void*)0)
        || !ASN1_INTEGER_to_BN(privkey, dh->priv_key)) {
        DHerr(DH_F_DH_PRIV_DECODE, DH_R_BN_ERROR);
        goto dherr;
    }

    if (!DH_generate_key(dh))
        goto dherr;

    EVP_PKEY_assign(pkey, pkey->ameth->pkey_id, dh);

    ASN1_STRING_clear_free(privkey);

    return 1;

 decerr:
    DHerr(DH_F_DH_PRIV_DECODE, EVP_R_DECODE_ERROR);
 dherr:
    DH_free(dh);
    ASN1_STRING_clear_free(privkey);
    return 0;
}
