
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int X509_ALGOR ;
struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int pkey_id; } ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_2__ EVP_PKEY ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;
 unsigned char* ASN1_STRING_get0_data (int *) ;
 int ASN1_STRING_length (int *) ;
 int KEY_OP_PRIVATE ;
 int PKCS8_pkey_get0 (int *,unsigned char const**,int*,int const**,int const*) ;
 int * d2i_ASN1_OCTET_STRING (int *,unsigned char const**,int) ;
 int ecx_key_op (TYPE_2__*,int ,int const*,unsigned char const*,int,int ) ;

__attribute__((used)) static int ecx_priv_decode(EVP_PKEY *pkey, const PKCS8_PRIV_KEY_INFO *p8)
{
    const unsigned char *p;
    int plen;
    ASN1_OCTET_STRING *oct = ((void*)0);
    const X509_ALGOR *palg;
    int rv;

    if (!PKCS8_pkey_get0(((void*)0), &p, &plen, &palg, p8))
        return 0;

    oct = d2i_ASN1_OCTET_STRING(((void*)0), &p, plen);
    if (oct == ((void*)0)) {
        p = ((void*)0);
        plen = 0;
    } else {
        p = ASN1_STRING_get0_data(oct);
        plen = ASN1_STRING_length(oct);
    }

    rv = ecx_key_op(pkey, pkey->ameth->pkey_id, palg, p, plen, KEY_OP_PRIVATE);
    ASN1_OCTET_STRING_free(oct);
    return rv;
}
