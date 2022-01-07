
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 void* CRYPTO_malloc (size_t,char const*,int) ;
 int sec_malloc_lock ;
 int secure_mem_initialized ;
 size_t secure_mem_used ;
 size_t sh_actual_size (void*) ;
 void* sh_malloc (size_t) ;

void *CRYPTO_secure_malloc(size_t num, const char *file, int line)
{
    return CRYPTO_malloc(num, file, line);

}
