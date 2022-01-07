
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int oiv; int iv; } ;
typedef TYPE_1__ EVP_CIPHER_CTX ;
typedef int ASN1_TYPE ;


 int ASN1_TYPE_get_octetstring (int *,int ,unsigned int) ;
 unsigned int EVP_CIPHER_CTX_iv_length (TYPE_1__*) ;
 int OPENSSL_assert (int) ;
 int memcpy (int ,int ,unsigned int) ;

int EVP_CIPHER_get_asn1_iv(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
    int i = 0;
    unsigned int l;

    if (type != ((void*)0)) {
        l = EVP_CIPHER_CTX_iv_length(c);
        OPENSSL_assert(l <= sizeof(c->iv));
        i = ASN1_TYPE_get_octetstring(type, c->oiv, l);
        if (i != (int)l)
            return -1;
        else if (i > 0)
            memcpy(c->iv, c->oiv, l);
    }
    return i;
}
