
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* hx509_crypto ;
struct TYPE_4__ {size_t length; int * data; } ;
struct TYPE_5__ {TYPE_1__ key; int c; } ;


 int ENOMEM ;
 int EVP_CIPHER_key_length (int ) ;
 int HX509_CRYPTO_INTERNAL_ERROR ;
 int free (int *) ;
 int * malloc (size_t) ;
 int memcpy (int *,void const*,size_t) ;

int
hx509_crypto_set_key_data(hx509_crypto crypto, const void *data, size_t length)
{
    if (EVP_CIPHER_key_length(crypto->c) > (int)length)
 return HX509_CRYPTO_INTERNAL_ERROR;

    if (crypto->key.data) {
 free(crypto->key.data);
 crypto->key.data = ((void*)0);
 crypto->key.length = 0;
    }
    crypto->key.data = malloc(length);
    if (crypto->key.data == ((void*)0))
 return ENOMEM;
    memcpy(crypto->key.data, data, length);
    crypto->key.length = length;

    return 0;
}
