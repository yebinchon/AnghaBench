
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_THREAD_lock_free (int *) ;
 int * bio_lookup_lock ;
 int bio_sock_cleanup_int () ;
 int * bio_type_lock ;

void bio_cleanup(void)
{

    bio_sock_cleanup_int();
    CRYPTO_THREAD_lock_free(bio_lookup_lock);
    bio_lookup_lock = ((void*)0);

    CRYPTO_THREAD_lock_free(bio_type_lock);
    bio_type_lock = ((void*)0);
}
