
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_THREAD_lock_free (int *) ;
 int * sec_malloc_lock ;
 scalar_t__ secure_mem_initialized ;
 scalar_t__ secure_mem_used ;
 int sh_done () ;

int CRYPTO_secure_malloc_done(void)
{
    return 0;
}
