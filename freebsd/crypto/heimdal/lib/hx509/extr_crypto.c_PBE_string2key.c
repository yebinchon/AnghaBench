
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int hx509_crypto ;
typedef int hx509_context ;
typedef int heim_oid ;
struct TYPE_10__ {int length; int data; } ;
typedef TYPE_2__ heim_octet_string ;
struct TYPE_9__ {unsigned char* data; int length; } ;
struct TYPE_11__ {int* iterations; TYPE_1__ salt; } ;
typedef TYPE_3__ PKCS12_PBEParams ;
typedef int EVP_MD ;


 int HX509_ALG_NOT_SUPP ;
 int HX509_CRYPTO_INTERNAL_ERROR ;
 int PKCS12_IV_ID ;
 int PKCS12_KEY_ID ;
 int PKCS12_key_gen (char const*,int,unsigned char*,int,int ,int,int ,int ,int const*) ;
 int decode_PKCS12_PBEParams (int ,int ,TYPE_3__*,int *) ;
 int free_PKCS12_PBEParams (TYPE_3__*) ;
 int hx509_crypto_allow_weak (int ) ;
 int hx509_crypto_destroy (int ) ;
 int hx509_crypto_init (int ,int *,int const*,int *) ;
 int hx509_crypto_set_key_data (int ,int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
PBE_string2key(hx509_context context,
        const char *password,
        const heim_octet_string *parameters,
        hx509_crypto *crypto,
        heim_octet_string *key, heim_octet_string *iv,
        const heim_oid *enc_oid,
        const EVP_MD *md)
{
    PKCS12_PBEParams p12params;
    int passwordlen;
    hx509_crypto c;
    int iter, saltlen, ret;
    unsigned char *salt;

    passwordlen = password ? strlen(password) : 0;

    if (parameters == ((void*)0))
  return HX509_ALG_NOT_SUPP;

    ret = decode_PKCS12_PBEParams(parameters->data,
      parameters->length,
      &p12params, ((void*)0));
    if (ret)
 goto out;

    if (p12params.iterations)
 iter = *p12params.iterations;
    else
 iter = 1;
    salt = p12params.salt.data;
    saltlen = p12params.salt.length;

    if (!PKCS12_key_gen (password, passwordlen, salt, saltlen,
    PKCS12_KEY_ID, iter, key->length, key->data, md)) {
 ret = HX509_CRYPTO_INTERNAL_ERROR;
 goto out;
    }

    if (!PKCS12_key_gen (password, passwordlen, salt, saltlen,
    PKCS12_IV_ID, iter, iv->length, iv->data, md)) {
 ret = HX509_CRYPTO_INTERNAL_ERROR;
 goto out;
    }

    ret = hx509_crypto_init(context, ((void*)0), enc_oid, &c);
    if (ret)
 goto out;

    hx509_crypto_allow_weak(c);

    ret = hx509_crypto_set_key_data(c, key->data, key->length);
    if (ret) {
 hx509_crypto_destroy(c);
 goto out;
    }

    *crypto = c;
out:
    free_PKCS12_PBEParams(&p12params);
    return ret;
}
