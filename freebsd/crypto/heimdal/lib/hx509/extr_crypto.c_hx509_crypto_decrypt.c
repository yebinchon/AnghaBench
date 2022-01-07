
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_3__* hx509_crypto ;
struct TYPE_11__ {unsigned char* data; size_t length; } ;
typedef TYPE_4__ heim_octet_string ;
struct TYPE_9__ {int * data; } ;
struct TYPE_10__ {int flags; int c; TYPE_2__ key; TYPE_1__* cipher; } ;
struct TYPE_8__ {int flags; } ;
typedef int EVP_CIPHER_CTX ;


 int ALLOW_WEAK ;
 int CIPHER_WEAK ;
 int ENOMEM ;
 int EVP_CIPHER_CTX_free (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_block_size (int ) ;
 int EVP_CIPHER_iv_length (int ) ;
 int EVP_Cipher (int *,unsigned char*,void const*,size_t const) ;
 int EVP_CipherInit_ex (int *,int ,int *,int *,void*,int ) ;
 int HX509_CMS_PADDING_ERROR ;
 int HX509_CRYPTO_ALGORITHM_BEST_BEFORE ;
 int HX509_CRYPTO_INTERNAL_ERROR ;
 int PADDING_PKCS7 ;
 int free (unsigned char*) ;
 unsigned char* malloc (size_t const) ;

int
hx509_crypto_decrypt(hx509_crypto crypto,
       const void *data,
       const size_t length,
       heim_octet_string *ivec,
       heim_octet_string *clear)
{
    EVP_CIPHER_CTX *evp;
    void *idata = ((void*)0);
    int ret;

    clear->data = ((void*)0);
    clear->length = 0;

    if ((crypto->cipher->flags & CIPHER_WEAK) &&
 (crypto->flags & ALLOW_WEAK) == 0)
 return HX509_CRYPTO_ALGORITHM_BEST_BEFORE;

    if (ivec && EVP_CIPHER_iv_length(crypto->c) < (int)ivec->length)
 return HX509_CRYPTO_INTERNAL_ERROR;

    if (crypto->key.data == ((void*)0))
 return HX509_CRYPTO_INTERNAL_ERROR;

    if (ivec)
 idata = ivec->data;

    evp = EVP_CIPHER_CTX_new();
    if (evp == ((void*)0))
 return ENOMEM;

    ret = EVP_CipherInit_ex(evp, crypto->c, ((void*)0),
       crypto->key.data, idata, 0);
    if (ret != 1) {
 EVP_CIPHER_CTX_free(evp);
 return HX509_CRYPTO_INTERNAL_ERROR;
    }

    clear->length = length;
    clear->data = malloc(length);
    if (clear->data == ((void*)0)) {
 EVP_CIPHER_CTX_free(evp);
 clear->length = 0;
 return ENOMEM;
    }

    if (EVP_Cipher(evp, clear->data, data, length) != 1) {
 EVP_CIPHER_CTX_free(evp);
 return HX509_CRYPTO_INTERNAL_ERROR;
    }
    EVP_CIPHER_CTX_free(evp);

    if ((crypto->flags & PADDING_PKCS7) && EVP_CIPHER_block_size(crypto->c) > 1) {
 int padsize;
 unsigned char *p;
 int j, bsize = EVP_CIPHER_block_size(crypto->c);

 if ((int)clear->length < bsize) {
     ret = HX509_CMS_PADDING_ERROR;
     goto out;
 }

 p = clear->data;
 p += clear->length - 1;
 padsize = *p;
 if (padsize > bsize) {
     ret = HX509_CMS_PADDING_ERROR;
     goto out;
 }
 clear->length -= padsize;
 for (j = 0; j < padsize; j++) {
     if (*p-- != padsize) {
  ret = HX509_CMS_PADDING_ERROR;
  goto out;
     }
 }
    }

    return 0;

 out:
    if (clear->data)
 free(clear->data);
    clear->data = ((void*)0);
    clear->length = 0;
    return ret;
}
