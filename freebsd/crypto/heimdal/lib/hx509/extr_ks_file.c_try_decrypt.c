
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hx509_collector {int dummy; } ;
typedef int hx509_context ;
struct TYPE_3__ {void* data; size_t length; } ;
typedef TYPE_1__ heim_octet_string ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;
typedef int AlgorithmIdentifier ;


 int ENOMEM ;
 int EVP_BytesToKey (int const*,int ,void const*,void const*,size_t,int,void*,int *) ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 size_t EVP_CIPHER_key_length (int const*) ;
 int EVP_Cipher (int *,void*,void const*,size_t) ;
 int EVP_CipherInit_ex (int *,int const*,int *,void*,void const*,int ) ;
 int EVP_md5 () ;
 int HX509_CRYPTO_INTERNAL_ERROR ;
 int _hx509_collector_private_key_add (int ,struct hx509_collector*,int const*,int *,TYPE_1__*,int *) ;
 int free (void*) ;
 int hx509_clear_error_string (int ) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 void* malloc (size_t) ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static int
try_decrypt(hx509_context context,
     struct hx509_collector *collector,
     const AlgorithmIdentifier *alg,
     const EVP_CIPHER *c,
     const void *ivdata,
     const void *password,
     size_t passwordlen,
     const void *cipher,
     size_t len)
{
    heim_octet_string clear;
    size_t keylen;
    void *key;
    int ret;

    keylen = EVP_CIPHER_key_length(c);

    key = malloc(keylen);
    if (key == ((void*)0)) {
 hx509_clear_error_string(context);
 return ENOMEM;
    }

    ret = EVP_BytesToKey(c, EVP_md5(), ivdata,
    password, passwordlen,
    1, key, ((void*)0));
    if (ret <= 0) {
 hx509_set_error_string(context, 0, HX509_CRYPTO_INTERNAL_ERROR,
          "Failed to do string2key for private key");
 return HX509_CRYPTO_INTERNAL_ERROR;
    }

    clear.data = malloc(len);
    if (clear.data == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOMEM,
          "Out of memory to decrypt for private key");
 ret = ENOMEM;
 goto out;
    }
    clear.length = len;

    {
 EVP_CIPHER_CTX *ctx;

 ctx = EVP_CIPHER_CTX_new();
 if (ctx == ((void*)0)) {
  hx509_set_error_string(context, 0, ENOMEM,
           "Out of memory to decrypt for private key");
  ret = ENOMEM;
  goto out;
 }
 EVP_CipherInit_ex(ctx, c, ((void*)0), key, ivdata, 0);
 EVP_Cipher(ctx, clear.data, cipher, len);
 EVP_CIPHER_CTX_free(ctx);
    }

    ret = _hx509_collector_private_key_add(context,
        collector,
        alg,
        ((void*)0),
        &clear,
        ((void*)0));

    memset(clear.data, 0, clear.length);
out:
    free(clear.data);
    memset(key, 0, keylen);
    free(key);
    return ret;
}
