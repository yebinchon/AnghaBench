
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;
typedef int EC_KEY ;


 int ASN1_object_size (int,size_t const,int ) ;
 int EC_KEY_get0_group (int const*) ;
 int EVP_MD_size (int const*) ;
 int V_ASN1_INTEGER ;
 int V_ASN1_OCTET_STRING ;
 int V_ASN1_SEQUENCE ;
 size_t ec_field_size (int ) ;

int sm2_ciphertext_size(const EC_KEY *key, const EVP_MD *digest, size_t msg_len,
                        size_t *ct_size)
{
    const size_t field_size = ec_field_size(EC_KEY_get0_group(key));
    const int md_size = EVP_MD_size(digest);
    size_t sz;

    if (field_size == 0 || md_size < 0)
        return 0;


    sz = 2 * ASN1_object_size(0, field_size + 1, V_ASN1_INTEGER)
         + ASN1_object_size(0, md_size, V_ASN1_OCTET_STRING)
         + ASN1_object_size(0, msg_len, V_ASN1_OCTET_STRING);

    *ct_size = ASN1_object_size(1, sz, V_ASN1_SEQUENCE);

    return 1;
}
