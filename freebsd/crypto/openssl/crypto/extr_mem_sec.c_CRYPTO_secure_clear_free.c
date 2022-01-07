
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAR (void*,size_t) ;
 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int CRYPTO_free (void*,char const*,int) ;
 int CRYPTO_secure_allocated (void*) ;
 int OPENSSL_cleanse (void*,size_t) ;
 int sec_malloc_lock ;
 size_t secure_mem_used ;
 size_t sh_actual_size (void*) ;
 int sh_free (void*) ;

void CRYPTO_secure_clear_free(void *ptr, size_t num,
                              const char *file, int line)
{
    if (ptr == ((void*)0))
        return;
    OPENSSL_cleanse(ptr, num);
    CRYPTO_free(ptr, file, line);

}
