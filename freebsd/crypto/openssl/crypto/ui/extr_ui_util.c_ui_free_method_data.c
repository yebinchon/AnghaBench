
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRYPTO_EX_DATA ;


 int OPENSSL_free (void*) ;

__attribute__((used)) static void ui_free_method_data(void *parent, void *ptr, CRYPTO_EX_DATA *ad,
                                int idx, long argl, void *argp)
{
    OPENSSL_free(ptr);
}
