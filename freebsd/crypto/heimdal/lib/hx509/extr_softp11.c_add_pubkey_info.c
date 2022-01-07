
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_object {int dummy; } ;
typedef int modulus_bits ;
typedef int hx509_context ;
typedef int hx509_cert ;
typedef int CK_ULONG ;
typedef int CK_RV ;
typedef scalar_t__ CK_KEY_TYPE ;
typedef int CK_BYTE ;
typedef int BIGNUM ;


 int BN_bn2bin (int *,int *) ;
 int BN_free (int *) ;
 int BN_num_bits (int *) ;
 size_t BN_num_bytes (int *) ;
 int CKA_MODULUS ;
 int CKA_MODULUS_BITS ;
 int CKA_PUBLIC_EXPONENT ;
 scalar_t__ CKK_RSA ;
 int CKR_GENERAL_ERROR ;
 int CKR_OK ;
 int * _hx509_cert_private_key (int ) ;
 int * _hx509_private_key_get_internal (int ,int *,char*) ;
 int add_object_attribute (struct st_object*,int ,int ,int *,size_t) ;
 int context ;
 int free (int *) ;
 int * malloc (size_t) ;

__attribute__((used)) static CK_RV
add_pubkey_info(hx509_context hxctx, struct st_object *o,
  CK_KEY_TYPE key_type, hx509_cert cert)
{
    BIGNUM *num;
    CK_BYTE *modulus = ((void*)0);
    size_t modulus_len = 0;
    CK_ULONG modulus_bits = 0;
    CK_BYTE *exponent = ((void*)0);
    size_t exponent_len = 0;

    if (key_type != CKK_RSA)
 return CKR_OK;
    if (_hx509_cert_private_key(cert) == ((void*)0))
 return CKR_OK;

    num = _hx509_private_key_get_internal(context,
       _hx509_cert_private_key(cert),
       "rsa-modulus");
    if (num == ((void*)0))
 return CKR_GENERAL_ERROR;
    modulus_bits = BN_num_bits(num);

    modulus_len = BN_num_bytes(num);
    modulus = malloc(modulus_len);
    BN_bn2bin(num, modulus);
    BN_free(num);

    add_object_attribute(o, 0, CKA_MODULUS, modulus, modulus_len);
    add_object_attribute(o, 0, CKA_MODULUS_BITS,
    &modulus_bits, sizeof(modulus_bits));

    free(modulus);

    num = _hx509_private_key_get_internal(context,
       _hx509_cert_private_key(cert),
       "rsa-exponent");
    if (num == ((void*)0))
 return CKR_GENERAL_ERROR;

    exponent_len = BN_num_bytes(num);
    exponent = malloc(exponent_len);
    BN_bn2bin(num, exponent);
    BN_free(num);

    add_object_attribute(o, 0, CKA_PUBLIC_EXPONENT,
    exponent, exponent_len);

    free(exponent);

    return CKR_OK;
}
