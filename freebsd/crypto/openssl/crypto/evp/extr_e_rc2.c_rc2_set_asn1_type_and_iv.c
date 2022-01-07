
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;
typedef int ASN1_TYPE ;


 int ASN1_TYPE_set_int_octetstring (int *,long,unsigned char*,int) ;
 int EVP_CIPHER_CTX_iv_length (int *) ;
 scalar_t__ EVP_CIPHER_CTX_original_iv (int *) ;
 long rc2_meth_to_magic (int *) ;

__attribute__((used)) static int rc2_set_asn1_type_and_iv(EVP_CIPHER_CTX *c, ASN1_TYPE *type)
{
    long num;
    int i = 0, j;

    if (type != ((void*)0)) {
        num = rc2_meth_to_magic(c);
        j = EVP_CIPHER_CTX_iv_length(c);
        i = ASN1_TYPE_set_int_octetstring(type, num,
                                          (unsigned char *)EVP_CIPHER_CTX_original_iv(c),
                                          j);
    }
    return i;
}
