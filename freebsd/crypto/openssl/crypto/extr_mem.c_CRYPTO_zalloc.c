
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CRYPTO_malloc (size_t,char const*,int) ;
 int FAILTEST () ;
 int memset (void*,int ,size_t) ;

void *CRYPTO_zalloc(size_t num, const char *file, int line)
{
    void *ret = CRYPTO_malloc(num, file, line);

    FAILTEST();
    if (ret != ((void*)0))
        memset(ret, 0, num);
    return ret;
}
