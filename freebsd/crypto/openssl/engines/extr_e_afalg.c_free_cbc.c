
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * _hidden; } ;


 int EVP_CIPHER_meth_free (int *) ;
 unsigned short OSSL_NELEM (int ) ;
 int afalg_cipher_nids ;
 TYPE_1__* cbc_handle ;

__attribute__((used)) static int free_cbc(void)
{
    short unsigned int i;
    for(i = 0; i < OSSL_NELEM(afalg_cipher_nids); i++) {
        EVP_CIPHER_meth_free(cbc_handle[i]._hidden);
        cbc_handle[i]._hidden = ((void*)0);
    }
    return 1;
}
