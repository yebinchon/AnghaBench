
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_THREAD_lock_free (int *) ;
 int * CRYPTO_THREAD_lock_new () ;
 int * sec_malloc_lock ;
 int secure_mem_initialized ;
 int sh_init (size_t,int) ;

int CRYPTO_secure_malloc_init(size_t size, int minsize)
{
    return 0;

}
