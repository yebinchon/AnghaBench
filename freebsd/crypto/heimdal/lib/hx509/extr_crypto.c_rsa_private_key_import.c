
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* hx509_private_key ;
typedef int hx509_key_format_t ;
typedef int hx509_context ;
struct TYPE_4__ {int * rsa; } ;
struct TYPE_5__ {int signature_alg; TYPE_1__ private_key; } ;
typedef int AlgorithmIdentifier ;


 int ASN1_OID_ID_PKCS1_SHA1WITHRSAENCRYPTION ;
 int HX509_CRYPTO_KEY_FORMAT_UNSUPPORTED ;

 int HX509_PARSING_KEY_FAILED ;
 int * d2i_RSAPrivateKey (int *,unsigned char const**,size_t) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

__attribute__((used)) static int
rsa_private_key_import(hx509_context context,
         const AlgorithmIdentifier *keyai,
         const void *data,
         size_t len,
         hx509_key_format_t format,
         hx509_private_key private_key)
{
    switch (format) {
    case 128: {
 const unsigned char *p = data;

 private_key->private_key.rsa =
     d2i_RSAPrivateKey(((void*)0), &p, len);
 if (private_key->private_key.rsa == ((void*)0)) {
     hx509_set_error_string(context, 0, HX509_PARSING_KEY_FAILED,
       "Failed to parse RSA key");
     return HX509_PARSING_KEY_FAILED;
 }
 private_key->signature_alg = ASN1_OID_ID_PKCS1_SHA1WITHRSAENCRYPTION;
 break;

    }
    default:
 return HX509_CRYPTO_KEY_FORMAT_UNSUPPORTED;
    }

    return 0;
}
