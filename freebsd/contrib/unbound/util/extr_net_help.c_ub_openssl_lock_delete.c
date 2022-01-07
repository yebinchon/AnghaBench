
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_THREADID_set_callback (int *) ;
 int CRYPTO_num_locks () ;
 int CRYPTO_set_id_callback (int *) ;
 int CRYPTO_set_locking_callback (int *) ;
 int free (int *) ;
 int lock_basic_destroy (int *) ;
 int * ub_openssl_locks ;

void ub_openssl_lock_delete(void)
{
}
