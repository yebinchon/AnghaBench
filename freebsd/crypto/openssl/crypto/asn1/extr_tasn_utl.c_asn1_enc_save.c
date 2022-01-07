
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; scalar_t__ modified; int * enc; } ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;
typedef TYPE_1__ ASN1_ENCODING ;


 int ASN1_F_ASN1_ENC_SAVE ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_malloc (int) ;
 TYPE_1__* asn1_get_enc_ptr (int **,int const*) ;
 int memcpy (int *,unsigned char const*,int) ;

int asn1_enc_save(ASN1_VALUE **pval, const unsigned char *in, int inlen,
                  const ASN1_ITEM *it)
{
    ASN1_ENCODING *enc;
    enc = asn1_get_enc_ptr(pval, it);
    if (!enc)
        return 1;

    OPENSSL_free(enc->enc);
    if ((enc->enc = OPENSSL_malloc(inlen)) == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_ENC_SAVE, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    memcpy(enc->enc, in, inlen);
    enc->len = inlen;
    enc->modified = 0;

    return 1;
}
