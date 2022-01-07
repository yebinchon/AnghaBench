
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* hx509_crypto ;
struct TYPE_6__ {scalar_t__ length; int * data; } ;
typedef TYPE_2__ heim_octet_string ;
struct TYPE_5__ {int c; } ;


 int ENOMEM ;
 scalar_t__ EVP_CIPHER_iv_length (int ) ;
 int HX509_CRYPTO_INTERNAL_ERROR ;
 scalar_t__ RAND_bytes (int *,scalar_t__) ;
 int free (int *) ;
 int * malloc (scalar_t__) ;

int
hx509_crypto_random_iv(hx509_crypto crypto, heim_octet_string *ivec)
{
    ivec->length = EVP_CIPHER_iv_length(crypto->c);
    ivec->data = malloc(ivec->length);
    if (ivec->data == ((void*)0)) {
 ivec->length = 0;
 return ENOMEM;
    }

    if (RAND_bytes(ivec->data, ivec->length) <= 0) {
 free(ivec->data);
 ivec->data = ((void*)0);
 ivec->length = 0;
 return HX509_CRYPTO_INTERNAL_ERROR;
    }
    return 0;
}
