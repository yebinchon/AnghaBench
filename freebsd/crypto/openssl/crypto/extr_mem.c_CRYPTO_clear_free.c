
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_free (void*,char const*,int) ;
 int OPENSSL_cleanse (void*,size_t) ;

void CRYPTO_clear_free(void *str, size_t num, const char *file, int line)
{
    if (str == ((void*)0))
        return;
    if (num)
        OPENSSL_cleanse(str, num);
    CRYPTO_free(str, file, line);
}
