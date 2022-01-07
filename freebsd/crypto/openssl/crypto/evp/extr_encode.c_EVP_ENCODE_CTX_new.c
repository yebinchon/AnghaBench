
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_ENCODE_CTX ;


 int * OPENSSL_zalloc (int) ;

EVP_ENCODE_CTX *EVP_ENCODE_CTX_new(void)
{
    return OPENSSL_zalloc(sizeof(EVP_ENCODE_CTX));
}
