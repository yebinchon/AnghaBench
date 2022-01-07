
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int modified; scalar_t__ len; int * enc; } ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;
typedef TYPE_1__ ASN1_ENCODING ;


 int OPENSSL_free (int *) ;
 TYPE_1__* asn1_get_enc_ptr (int **,int const*) ;

void asn1_enc_free(ASN1_VALUE **pval, const ASN1_ITEM *it)
{
    ASN1_ENCODING *enc;
    enc = asn1_get_enc_ptr(pval, it);
    if (enc) {
        OPENSSL_free(enc->enc);
        enc->enc = ((void*)0);
        enc->len = 0;
        enc->modified = 1;
    }
}
