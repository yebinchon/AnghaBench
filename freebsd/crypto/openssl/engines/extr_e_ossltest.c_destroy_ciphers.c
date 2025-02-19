
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_CIPHER_meth_free (int *) ;
 int * _hidden_aes_128_cbc ;
 int * _hidden_aes_128_gcm ;

__attribute__((used)) static void destroy_ciphers(void)
{
    EVP_CIPHER_meth_free(_hidden_aes_128_cbc);
    EVP_CIPHER_meth_free(_hidden_aes_128_gcm);
    _hidden_aes_128_cbc = ((void*)0);
}
